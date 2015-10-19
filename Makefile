all:
	cd src   && $(MAKE)
	cd build && $(MAKE)
	cd stage && $(MAKE)

clean:
	cd src   && $(MAKE) clean
	cd build && $(MAKE) clean
	cd stage && $(MAKE) clean

.PHONY: all clean
