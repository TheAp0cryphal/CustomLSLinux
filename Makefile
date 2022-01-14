## This is a simple Makefile with lots of comments 
## Check Unix Programming Tools handout for more info.

# Define what compiler to use and the flags.
CC=gcc
CXX=CC

all: myls

# Compile all .c files into .o files
# % matches all (like * in a command)
# $< is the source file (.c file)
%.o : %.c
	$(CC) -c $(CCFLAGS) $<



myls: myls.o 
	$(CC) myls.c -o myls 

clean:
	rm -f core *.o 

