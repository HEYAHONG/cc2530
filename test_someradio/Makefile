SOLUTION = someradio

CC_TOOL = cc-tool

SRC = $(wildcard *.c)

$(SOLUTION).hex: $(SRC)
	sdcc --model-large $(SDCCCFLAGS) $<
	packihx $(SOLUTION).ihx > $(SOLUTION).hex

burn: $(SOLUTION).hex
	sudo $(CC_TOOL) -e -w $^ -v
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

