GCC = gcc
TARGETS = osmconvert osmfilter osmupdate
PREFIX = /usr/local

all: $(TARGETS)

install: $(TARGETS)
	mkdir -p $(PREFIX)/bin
	cp -t $(PREFIX)/bin/ $(TARGETS)

clean:
	rm $(TARGETS)

osmconvert: osmconvert.c
	$(GCC) $< -lz -O3 -o $@

osmfilter: osmfilter.c
	$(GCC) $< -O3 -o $@

osmupdate: osmupdate.c
	$(GCC) $< -o $@
