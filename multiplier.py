"""
Radix-4 Booth Multiplier (32-bit) with 4-stage Pipeline
========================================================

Simplified implementation using basic multiplication approach per partial product,
then using adder tree for accumulation.

Pipeline structure (4 cycles total):
  - Stage 1: Generate 16 partial products with Booth encoding
  - Stage 2: First level compression (16 -> 8)
  - Stage 3: Second level compression (8 -> 2)  
  - Stage 4: Final addition
"""

import warnings
warnings.filterwarnings("ignore")

import sys
import os

assassyn_home = os.path.abspath(os.path.join(os.path.dirname(__file__), '../..'))
os.environ['ASSASSYN_HOME'] = assassyn_home
lib_path = os.path.join(assassyn_home, 'python')
sys.path.insert(0, lib_path)

from assassyn.frontend import *
from assassyn.backend import elaborate
from assassyn import utils
import assassyn


class BoothEncoder(Module):
    """
    Stage 1: Booth Encoding and Partial Product Generation
    
    Radix-4 Booth encoding examines 3 bits at a time:
    [b_{2i+1}, b_{2i}, b_{2i-1}]
    
    Encoding table:
    000 -> 0    001 -> +A   010 -> +A   011 -> +2A
    100 -> -2A  101 -> -A   110 -> -A   111 -> 0
    """
    
    def __init__(self):
        super().__init__(
            ports={
                'a': Port(Int(32)),
                'b': Port(Int(32)),
                'tag': Port(UInt(8)),
            }
        )
    
    @module.combinational
    def build(self, stage2: 'CompressStage1'):
        a, b, tag = self.pop_all_ports(True)
        
        # Convert to unsigned for bit manipulation
        a_u = a.bitcast(UInt(32))
        b_u = b.bitcast(UInt(32))
        
        # Sign extend A to 64 bits for safe arithmetic
        a_sign = a_u[31:31]
        a_ext_hi = a_sign.select(UInt(32)(0xFFFFFFFF), UInt(32)(0))
        a_64 = concat(a_ext_hi, a_u).bitcast(Int(64))
        
        # 2*A using addition
        a_2x = (a_64 << Bits(1)(1)).bitcast(Int(64))
        
        # -A and -2A
        neg_a = Int(64)(0) - a_64
        neg_2a = Int(64)(0) - a_2x
        
        # Prepare B with implicit b_{-1} = 0
        # We need to access bits at positions 2i-1, 2i, 2i+1 for each i
        # b_ext = {b[31], b[31:0], 0} = 34 bits
        b_sign = b_u[31:31]
        b_ext = concat(b_sign, b_u, UInt(1)(0)).bitcast(UInt(34))
        
        # Generate 16 partial products
        pp_list = []
        
        for i in range(16):
            # Position in b_ext
            pos = 2 * i
            
            # Extract 3 bits: b_{2i-1}, b_{2i}, b_{2i+1}
            bit0 = b_ext[pos:pos]       # b_{2i-1}
            bit1 = b_ext[pos+1:pos+1]   # b_{2i}
            bit2 = b_ext[pos+2:pos+2]   # b_{2i+1}
            
            # Form 3-bit encoding value for easier decoding
            # enc = bit2*4 + bit1*2 + bit0
            enc = concat(bit2, bit1, bit0).bitcast(UInt(3))
            
            # Booth decoding using select chain
            # 000=0, 001=+A, 010=+A, 011=+2A, 100=-2A, 101=-A, 110=-A, 111=0
            
            pp = enc.case({
                UInt(3)(1): a_64,
                UInt(3)(2): a_64,
                UInt(3)(3): a_2x,
                UInt(3)(4): neg_2a,
                UInt(3)(5): neg_a,
                UInt(3)(6): neg_a,
            } | {None: Int(64)(0)})
            # 000 and 111 remain 0
            
            # Shift left by 2*i for proper weight
            # shift returns Bits, so we bitcast back to Int
            shift_amt = UInt(6)(2 * i)
            pp_shifted = (pp << shift_amt).bitcast(Int(64))
            
            pp_list.append(pp_shifted)
        
        log("Stage1: a={:?}, b={:?}, tag={}", a, b, tag)
        
        stage2.async_called(
            pp0=pp_list[0], pp1=pp_list[1], pp2=pp_list[2], pp3=pp_list[3],
            pp4=pp_list[4], pp5=pp_list[5], pp6=pp_list[6], pp7=pp_list[7],
            pp8=pp_list[8], pp9=pp_list[9], pp10=pp_list[10], pp11=pp_list[11],
            pp12=pp_list[12], pp13=pp_list[13], pp14=pp_list[14], pp15=pp_list[15],
            tag=tag, a_orig=a, b_orig=b
        )


class CompressStage1(Module):
    """Stage 2: 16 -> 8 compression"""
    
    def __init__(self):
        super().__init__(
            ports={
                'pp0': Port(Int(64)), 'pp1': Port(Int(64)), 
                'pp2': Port(Int(64)), 'pp3': Port(Int(64)),
                'pp4': Port(Int(64)), 'pp5': Port(Int(64)), 
                'pp6': Port(Int(64)), 'pp7': Port(Int(64)),
                'pp8': Port(Int(64)), 'pp9': Port(Int(64)), 
                'pp10': Port(Int(64)), 'pp11': Port(Int(64)),
                'pp12': Port(Int(64)), 'pp13': Port(Int(64)), 
                'pp14': Port(Int(64)), 'pp15': Port(Int(64)),
                'tag': Port(UInt(8)),
                'a_orig': Port(Int(32)),
                'b_orig': Port(Int(32)),
            }
        )
    
    @module.combinational
    def build(self, stage3: 'CompressStage2'):
        (pp0, pp1, pp2, pp3, pp4, pp5, pp6, pp7,
         pp8, pp9, pp10, pp11, pp12, pp13, pp14, pp15,
         tag, a_orig, b_orig) = self.pop_all_ports(True)
        
        s0 = pp0 + pp1
        s1 = pp2 + pp3
        s2 = pp4 + pp5
        s3 = pp6 + pp7
        s4 = pp8 + pp9
        s5 = pp10 + pp11
        s6 = pp12 + pp13
        s7 = pp14 + pp15
        
        log("Stage2: 16->8 compression, tag={}", tag)
        
        stage3.async_called(
            s0=s0, s1=s1, s2=s2, s3=s3,
            s4=s4, s5=s5, s6=s6, s7=s7,
            tag=tag, a_orig=a_orig, b_orig=b_orig
        )


class CompressStage2(Module):
    """Stage 3: 8 -> 2 compression"""
    
    def __init__(self):
        super().__init__(
            ports={
                's0': Port(Int(64)), 's1': Port(Int(64)),
                's2': Port(Int(64)), 's3': Port(Int(64)),
                's4': Port(Int(64)), 's5': Port(Int(64)),
                's6': Port(Int(64)), 's7': Port(Int(64)),
                'tag': Port(UInt(8)),
                'a_orig': Port(Int(32)),
                'b_orig': Port(Int(32)),
            }
        )
    
    @module.combinational
    def build(self, stage4: 'FinalAdder'):
        s0, s1, s2, s3, s4, s5, s6, s7, tag, a_orig, b_orig = self.pop_all_ports(True)
        
        t0 = s0 + s1
        t1 = s2 + s3
        t2 = s4 + s5
        t3 = s6 + s7
        
        u0 = t0 + t1
        u1 = t2 + t3
        
        log("Stage3: 8->2 compression, tag={}", tag)
        
        stage4.async_called(u0=u0, u1=u1, tag=tag, a_orig=a_orig, b_orig=b_orig)


class FinalAdder(Module):
    """Stage 4: Final addition"""
    
    def __init__(self):
        super().__init__(
            ports={
                'u0': Port(Int(64)),
                'u1': Port(Int(64)),
                'tag': Port(UInt(8)),
                'a_orig': Port(Int(32)),
                'b_orig': Port(Int(32)),
            }
        )
    
    @module.combinational
    def build(self):
        u0, u1, tag, a_orig, b_orig = self.pop_all_ports(True)
        result = u0 + u1
        log("Result: {:?} * {:?} = {:?} (tag={})", a_orig, b_orig, result, tag)


class Driver(Module):
    """Test driver"""
    
    def __init__(self):
        super().__init__(ports={})
    
    @module.combinational
    def build(self, booth_encoder: BoothEncoder):
        cnt = RegArray(UInt(32), 1)
        cnt[0] = cnt[0] + UInt(32)(1)
        
        cond = cnt[0] < UInt(32)(20)
        
        with Condition(cond):
            a_base = cnt[0] * UInt(32)(7) + UInt(32)(3)
            b_base = cnt[0] * UInt(32)(5) + UInt(32)(2)
            
            a = a_base.bitcast(Int(32))
            b = b_base.bitcast(Int(32))
            
            log("Input: a={:?}, b={:?}, cnt={}", a, b, cnt[0])
            
            tag_val = cnt[0][0:7].bitcast(UInt(8))
            booth_encoder.async_called(a=a, b=b, tag=tag_val)


def check_raw(raw):
    results = []
    errors = []
    
    for line in raw.split('\n'):
        if 'Result:' in line:
            parts = line.split()
            try:
                idx = parts.index('Result:') + 1
                a = int(parts[idx])
                b = int(parts[idx + 2])
                result = int(parts[idx + 4])
                expected = a * b
                if expected != result:
                    errors.append(f"ERROR: {a} * {b} = {result}, expected {expected}")
                else:
                    results.append((a, b, result))
            except (ValueError, IndexError):
                continue
    
    if errors:
        for e in errors[:15]:
            print(e)
        return False
    
    if results:
        print(f"✅ Verified {len(results)} multiplications successfully!")
        for a, b, r in results[:5]:
            print(f"   {a} * {b} = {r}")
        if len(results) > 5:
            print(f"   ... and {len(results) - 5} more")
        return True
    else:
        print("❌ No multiplication results found!")
        return False


def test_booth_multiplier():
    sys = SysBuilder('booth_mul')
    
    with sys:
        final_adder = FinalAdder()
        final_adder.build()
        
        compress2 = CompressStage2()
        compress2.build(final_adder)
        
        compress1 = CompressStage1()
        compress1.build(compress2)
        
        booth_encoder = BoothEncoder()
        booth_encoder.build(compress1)
        
        driver = Driver()
        driver.build(booth_encoder)
    
    print(sys)
    
    config = assassyn.backend.config(
        verilog=bool(utils.has_verilator()),
        sim_threshold=50,
        idle_threshold=100,
        random=False,
    )
    
    simulator_path, verilator_path = elaborate(sys, **config)
    
    print("\n=== Running Simulation ===")
    raw = utils.run_simulator(simulator_path)
    
    for line in raw.split('\n'):
        if 'Result:' in line or 'Input:' in line:
            print(line.strip())
    
    success = check_raw(raw)
    
    if verilator_path and success:
        print("\n=== Running Verilator ===")
        raw_v = utils.run_verilator(verilator_path)
        for line in raw_v.split('\n'):
            if 'Result:' in line:
                print(line.strip())
        check_raw(raw_v)
    
    return success


if __name__ == '__main__':
    test_booth_multiplier()
