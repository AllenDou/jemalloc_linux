CC =gcc
CFLAGS = -Wall -g3 -O0
PRO1=jemalloc_test
LINK=-lpthread

PRO1_OBJ=jemalloc_linux.o main.o
QUIET_LINK = @printf ' %b %b\n' $(LINKCOLOR)LINK$(ENDCOLOR) $(BINCOLOR)$@$(ENDCOLOR);

all: $(PRO1)
	 @echo "compile done."

$(PRO1): $(PRO1_OBJ)
	$(CC) $(CFLAGS) -o $@ $^ $(LINK)
clean:
	$(RM) jemalloc_test *.o
