# Makefile for Proxy Lab 
#
# You may modify this file any way you like (except for the handin
# rule). You instructor will type "make" on your specific Makefile to
# build your proxy from sources.

CC = gcc
CFLAGS = -g -Wall
LDFLAGS = -lpthread

all: proxy

csapp.o: csapp.c csapp.h
	$(CC) $(CFLAGS) -c csapp.c

proxy.o: proxy.c csapp.h
	$(CC) $(CFLAGS) -c proxy.c

proxy: proxy.o csapp.o
	$(CC) $(CFLAGS) proxy.o csapp.o -o proxy $(LDFLAGS)

# Creates a tarball in ../proxylab-handin.tar that you can then
# hand in. DO NOT MODIFY THIS!
handin:
	(make clean; cd ..; tar cvf $(USER)-proxylab-handin.tar proxylab-handout --exclude tiny --exclude nop-server.py --exclude proxy --exclude driver.sh --exclude port-for-user.pl --exclude free-port.sh --exclude ".*")

clean:
	rm -f *~ *.o proxy core *.tar *.zip *.gzip *.bzip *.gz




# CC = gcc
# CFLAGS = -g -Wall
# LDFLAGS = -lpthread

# all: proxy

# csapp.o: csapp.c csapp.h
# 	$(CC) $(CFLAGS) -c csapp.c

# proxy.o: proxy.c csapp.h
# 		$(CC) $(CFLAGS) -c proxy.c

# proxy: proxy.o csapp.o
# 		$(CC) $(CFLAGS) proxy.o csapp.o -o proxy $(LDFLAGS)
# hostinfo: csapp.o
# 		$(CC) $(CFLAGS) hostinfo.c csapp.o -o hostinfo $(LDFLAGS)
# echoclient: csapp.o
# 		$(CC) $(CFLAGS) echo/echoclient.c csapp.o -o echoclient $(LDFLAGS)
# echoserver: csapp.o
# 		$(CC) $(CFLAGS) echo/echoserveri.c csapp.o -o echoserver $(LDFLAGS)
# # Creates a tarball in ../proxylab-handin.tar that you can then
# # hand in. DO NOT MODIFY THIS!
# handin: 
# 	(make clean; cd ..; tar cvf $(USER)-proxylab-handin.tar proxylab-handout --exclude tiny --exclude nop-server.py --exclude proxy --exclude driver.sh --exclude port-for-user.pl --exclude free-port.sh --exclude ".*")

# clean:
# 	rm -f *~ *.o proxy core *.tar *.zip *.gzip *.bzip *.gz

# re: clean echoserver