CC=clang
CFLAGS=-O3 -Wall

all: linkedlist

linkedlist: main.o linkedlist.o
	$(CC) main.o linkedlist.o -o linkedlist

linkedlist.o: linkedlist.c
	$(CC) -c linkedlist.c

clean:
	rm -rf *o linkedlist
