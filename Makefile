GCC = gcc
TARGETS = osmconvert osmfilter osmupdate

all: $(TARGETS)

clean:
	rm $(TARGETS)

osmconvert: osmconvert.c
	$(GCC) $< -lz -O3 -o $@

osmfilter: osmfilter.c
	$(GCC) $< -O3 -o $@

osmupdate: osmupdate.c
	$(GCC) $< -o $@

