# otar Makefile

CC =		cc
CFLAGS =	-g -O2

PROG =	pax
OBJS =	ar_io.o ar_subs.o buf_subs.o cpio.o file_subs.o ftree.o \
	gen_subs.o getoldopt.o options.o pat_rep.o pax.o sel_subs.o tables.o \
	tar.o tty_subs.o vis.o

all: ${OBJS}
	${CC} ${LDFLAGS} -o ${PROG} ${OBJS}
	ln ${PROG} tar
	ln ${PROG} cpio

clean:
	rm -f ${PROG} tar cpio ${OBJS}
