EXE=htstress
SRC=htstress.c
REQUIRED_CFLAGS=-Wall -Werror -pedantic -march=native -O3 -pthread -std=gnu99

CFLAGS += $(REQUIRED_CFLAGS)

ifeq ($(DEBUG),1)
CFLAGS += -g
endif

all: build

build: $(EXE)

clean:
	@rm -f $(EXE)

$(EXE):
	$(CC) $(CFLAGS) -o $(EXE) $(SRC) 
