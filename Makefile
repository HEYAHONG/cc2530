.IGNORE:clean
all:
	make -C hal_cc2530
	make -C hal_cc2530_TI
	make -C test_uart
	make -C test_connection
	make -C test_connection_hal
	make -C test_adc_hal
	make -C test_someradio
	make -C test_cc2530dk_contiki 
	make -C test_border-router_contiki
	make -C test_udp-ipv6_contiki  

clean:
	make -C hal_cc2530 clean
	make -C hal_cc2530_TI clean
	make -C test_uart clean
	make -C test_connection clean
	make -C test_connection_hal clean
	make -C test_adc_hal clean
	make -C test_someradio clean
	make -C toolchain/sdcc distclean
	make -C toolchain/cc-tool distclean
	make -C test_cc2530dk_contiki distclean
	make -C test_border-router_contiki distclean
	make -C test_udp-ipv6_contiki distclean

