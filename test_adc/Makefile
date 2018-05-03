SOLUTION = test_adc
SELF = 2
TARGET = 1

CC_TOOL = cc-tool

SDCCCFLAGS += -I../hal_cc2530/
SDCCCFLAGS += -L../hal_cc2530/
SDCCCFLAGS += --model-large
SDCCCFLAGS += -DSELF=$(SELF) -DTARGET=$(TARGET)

SRC = $(wildcard *.c)

$(SOLUTION).hex: $(SRC)
	sdcc $(SDCCCFLAGS) hal_cc2530.lib $<
	packihx $(SOLUTION).ihx > $(SOLUTION).hex

burn: $(SOLUTION).hex
	sudo $(CC_TOOL) -e -w $^ -v
	sudo $(CC_TOOL) --reset

reset:
	sudo $(CC_TOOL) --reset

sim: $(SOLUTION).hex
	s51 $^

clean:
	rm -f *.asm
	rm -f *.ihx
	rm -f *.lk
	rm -f *.lst
	rm -f *.map
	rm -f *.mem
	rm -f *.rel
	rm -f *.rst
	rm -f *.sym  
	rm -f *.hex
