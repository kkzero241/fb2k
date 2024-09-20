#Pointer-related functions
def get_bank_no(offset):
    return int(offset / 0x4000)

def get_mapped_offset(offset):
    bank_no = int(offset / 0x4000)
    return offset - (bank_no * 0x4000) + 0x4000

def get_real_offset(bank, offset):
    if offset >= 0x4000:
        return offset + (0x4000 * (bank - 1))
    else:
        return offset