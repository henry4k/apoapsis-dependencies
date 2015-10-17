all:
	cd src   && $(MAKE)
	cd build && $(MAKE)

clean:
	cd src   && $(MAKE) clean
	cd build && $(MAKE) clean

.PHONY: all clean
