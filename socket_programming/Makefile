# Makefile for Proxy Lab
#
# You may modify this file any way you like (except for the handin
# rule). You instructor will type "make" on your specific Makefile to
# build your proxy from sources.
CC = gcc
CFLAGS = -g -Wall
LDFLAGS = -lpthread
csapp.o: ../csapp.c ../csapp.h
	$(CC) $(CFLAGS) -c ../csapp.c
echoclient: csapp.o
	$(CC) $(CFLAGS) echoclient.c csapp.o -o echoclient $(LDFLAGS);
echoserver: csapp.o
	$(CC) $(CFLAGS) echoserver.c csapp.o -o echoserver $(LDFLAGS)
clean:
	rm -f *~ *.o proxy core *.tar *.zip *.gzip *.bzip *.gz