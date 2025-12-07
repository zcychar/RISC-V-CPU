
def encode_r_type(opcode, funct3, funct7, rd, rs1, rs2):
    return (funct7 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) | (rd << 7) | opcode

def encode_i_type(opcode, funct3, rd, rs1, imm):
    imm = imm & 0xFFF
    return (imm << 20) | (rs1 << 15) | (funct3 << 12) | (rd << 7) | opcode

def encode_s_type(opcode, funct3, rs1, rs2, imm):
    imm11_5 = (imm >> 5) & 0x7F
    imm4_0 = imm & 0x1F
    return (imm11_5 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) | (imm4_0 << 7) | opcode

def encode_b_type(opcode, funct3, rs1, rs2, imm):
    # imm is the offset in bytes.
    # B-type immediate structure:
    # 31    30:25     24:20 19:15 14:12 11:8      7     6:0
    # imm12 imm10:5   rs2   rs1   funct3 imm4:1    imm11 opcode
    
    imm12 = (imm >> 12) & 0x1
    imm10_5 = (imm >> 5) & 0x3F
    imm4_1 = (imm >> 1) & 0xF
    imm11 = (imm >> 11) & 0x1
    
    return (imm12 << 31) | (imm10_5 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) | (imm4_1 << 8) | (imm11 << 7) | opcode

def addi(rd, rs1, imm):
    return encode_i_type(0b0010011, 0b000, rd, rs1, imm)

def add(rd, rs1, rs2):
    return encode_r_type(0b0110011, 0b000, 0b0000000, rd, rs1, rs2)

def sub(rd, rs1, rs2):
    return encode_r_type(0b0110011, 0b000, 0b0100000, rd, rs1, rs2)

def lw(rd, rs1, imm):
    return encode_i_type(0b0000011, 0b010, rd, rs1, imm)

def lh(rd, rs1, imm):
    return encode_i_type(0b0000011, 0b001, rd, rs1, imm)

def lb(rd, rs1, imm):
    return encode_i_type(0b0000011, 0b000, rd, rs1, imm)

def sw(rs1, rs2, imm):
    return encode_s_type(0b0100011, 0b010, rs1, rs2, imm)

def beq(rs1, rs2, imm):
    return encode_b_type(0b1100011, 0b000, rs1, rs2, imm)

def bne(rs1, rs2, imm):
    return encode_b_type(0b1100011, 0b001, rs1, rs2, imm)

def blt(rs1, rs2, imm):
    return encode_b_type(0b1100011, 0b100, rs1, rs2, imm)

def bge(rs1, rs2, imm):
    return encode_b_type(0b1100011, 0b101, rs1, rs2, imm)

def bltu(rs1, rs2, imm):
    return encode_b_type(0b1100011, 0b110, rs1, rs2, imm)

def bgeu(rs1, rs2, imm):
    return encode_b_type(0b1100011, 0b111, rs1, rs2, imm)

def nop():
    return addi(0, 0, 0)
