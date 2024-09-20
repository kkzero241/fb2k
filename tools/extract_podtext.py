import os, sys
from gb_common import *

dirname, filename = os.path.split(os.path.abspath(__file__))

STRINGS_LUT = 0xC0F6
STRINGS_COUNT = 46

def parse_string(rom, offset):
    rom.seek(offset)
    out = ""
    count = int.from_bytes(rom.read(1), byteorder='little')
    rom.read(1)
    for i in range(0, count):
        current_char = ''
        current_char = rom.read(1)
        while current_char != b'\x00':
            out = out + current_char.decode("utf-8")
            current_char = rom.read(1)
    return out

def main():
    if len(sys.argv) < 2:
        print(f'Usage: {sys.argv[0]} <ROM file>', file=sys.stderr)
        sys.exit(1)
    with open(sys.argv[1], "rb") as rom:
        out = open(f'{dirname}/pod_text.txt', "w", encoding="utf-8")
        rom.seek(STRINGS_LUT)
        for i in range(0, STRINGS_COUNT):
            offset_bak = rom.tell() + 2
            out.write(parse_string(rom, get_real_offset(3, int.from_bytes(rom.read(2), byteorder='little'))) + "\n")
            rom.seek(offset_bak)
            
        out.close()

if __name__ == '__main__':
    main()