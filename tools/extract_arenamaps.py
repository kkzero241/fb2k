import os, sys
from gb_common import *

dirname, filename = os.path.split(os.path.abspath(__file__))

ARENAS_LUT = 0xC000
ARENAS_COUNT = 48

def parse_arena(index, rom, offset):
    rom.seek(offset)
    
    width = rom.read(1)
    height = rom.read(1)
    intwidth = int.from_bytes(width, byteorder='little')
    intheight = int.from_bytes(height, byteorder='little')
    name = ""
    current_char = ''
    current_char = rom.read(1)
    while current_char != b'\x00':
        name = name + current_char.decode("utf-8")
        current_char = rom.read(1)
    data = rom.read(intwidth * intheight)
    if len(name) > 0:
        outname = name.replace(" ", "_")
    else:
        outname = hex(offset)
    
    try:
        os.mkdir(f'{dirname}/extract_arenamaps')
    except:
        pass
    with open(f'{dirname}/extract_arenamaps/{outname}.arena', "wb") as outfile:
        outfile.write(bytes(width))
        outfile.write(bytes(height))
        outfile.write(bytes(name, encoding='ascii'))
        outfile.write(b'\x00')
        outfile.write(data)

    with open(f'{dirname}/extract_arenamaps/{outname}.txt', "w", encoding="utf-8") as outfile:
        outfile.write(f'Arena {str(index).zfill(2)}\n{name}\nWidth: {intwidth}\nHeight:{intheight}\n')
        for h in range(intheight - 1, 0, -1):
            outfile.write("\n")
            for w in range(0, intwidth):
                pass

    return outname


def main():
    if len(sys.argv) < 2:
        print(f'Usage: {sys.argv[0]} <ROM file>', file=sys.stderr)
        sys.exit(1)
    names = []
    with open(sys.argv[1], "rb") as rom:
        rom.seek(ARENAS_LUT)
        for i in range(0, ARENAS_COUNT):
            offset_bak = rom.tell() + 2
            names.append(parse_arena(i, rom, get_real_offset(3, int.from_bytes(rom.read(2), byteorder='little'))))
            rom.seek(offset_bak)

    with open(f'{dirname}/extract_arenamaps/names.txt', "w", encoding="utf-8") as outnames:
        for entry in names:
            outnames.write("    dw Arena_" + entry + "\n")
        outnames.write("\n")
        for entry in names:
            outnames.write("Arena_" + entry + "::\n")
            

if __name__ == '__main__':
    main()