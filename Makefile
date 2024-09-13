# based on http://voidptr.io/blog/2017/01/21/GameBoy.html

rwildcard       =   $(foreach d,$(wildcard $1*),$(call rwildcard,$d/,$2) $(filter $(subst *,%,$2),$d))
ASM             :=  rgbasm
LINKER          :=  rgblink
FIX             :=  rgbfix
BUILD_DIR       :=  build
PROJECT_NAME    ?=  fb2k
SRC_DIR         :=  src
SRC_ASM         :=  $(call rwildcard, $(SRC_DIR)/, *.asm)
INC_DIR         :=  inc/
ASMFLAGS        :=  -p0 -P includes.asm -I $(INC_DIR)
FIXFLAGS        :=  -O -f gh

OUTPUT          :=  $(BUILD_DIR)/$(PROJECT_NAME)
OBJ_FILES       :=  $(addprefix $(BUILD_DIR)/obj/, $(SRC_ASM:src/%.asm=%.obj))
OBJ_DIRS        :=  $(sort $(addprefix $(BUILD_DIR)/obj/, $(dir $(SRC_ASM:src/%.asm=%.obj))))
LINKERFLAGS     :=  -m $(OUTPUT).map -n $(OUTPUT).sym -d

.PHONY: all clean

all: build

build: $(OBJ_FILES)
	$(LINKER) -O overlay.gb -o $(OUTPUT).gb $(LINKERFLAGS) $(OBJ_FILES)
	$(FIX) $(FIXFLAGS) $(OUTPUT).gb
 
$(BUILD_DIR)/obj/%.obj : src/%.asm | $(OBJ_DIRS)
	$(ASM) -o $@ $(ASMFLAGS) $<

$(OBJ_DIRS): 
	mkdir -p $@

clean:
	rm -rf $(BUILD_DIR)
