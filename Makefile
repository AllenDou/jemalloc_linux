CC =gcc
CFLAGS = -g3 -O0
PRO1=jemalloc_test
LINK=-lpthread

PRO1_OBJ=jemalloc_linux.o main.o
QUIET_LINK = @printf ' %b %b\n' $(LINKCOLOR)LINK$(ENDCOLOR) $(BINCOLOR)$@$(ENDCOLOR);

all: $(PRO1)
	 @echo "compile done."

$(PRO1): $(PRO1_OBJ)
	$(CC) $(CFLAGS) -D__isthreaded=true -DMALLOC_DSS=true -o $@ $^ $(LINK)
clean:
	$(RM) jemalloc_test *.o
