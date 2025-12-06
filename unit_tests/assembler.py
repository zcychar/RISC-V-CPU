
def encode_r_type(opcode, funct3, funct7, rd, rs1, rs2):
    return (funct7 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) | (rd << 7) | opcode

def encode_i_type(opcode, funct3, rd, rs1, imm):
    imm = imm & 0xFFF
    return (imm << 20) | (rs1 << 15) | (funct3 << 12) | (rd << 7) | opcode

def encode_s_type(opcode, funct3, rs1, rs2, imm):
    imm11_5 = (imm >> 5) & 0x7F
    imm4_0 = imm & 0x1F
    return (imm11_5 << 25) | (rs2 << 20) | (rs1 << 15) | (funct3 << 12) | (imm4_0 << 7) | opcode

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

def nop():
    return addi(0, 0, 0)
