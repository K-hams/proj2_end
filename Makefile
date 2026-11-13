#
# Makefile for the malloc lab driver
#

CLEAN_COMMAND = rm -f out/* bin/*
CC = clang
CFLAGS = -Werror -Wall -Wextra -O3 -g

all: bin/mdriver-explicit

bin/mdriver-%: out/mdriver-%.o out/mm-%.o out/memlib.o out/fsecs.o out/fcyc.o out/clock.o
	$(CC) $(CFLAGS) $^ -o $@ -lm

out/mdriver-explicit.o: driver/mdriver.c
	$(CC) $(CFLAGS) -c -DSTAGE1 $^ -o $@

out/%.o: src/%.c
	$(CC) $(CFLAGS) -Iinclude -c $^ -o $@

out/%.o: driver/%.c
	$(CC) $(CFLAGS) -c $^ -o $@

clean:
	$(CLEAN_COMMAND)

.PRECIOUS: bin/mdriver-% out/mdriver-explicit.o out/%.o
