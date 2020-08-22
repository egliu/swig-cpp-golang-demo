CC=g++

SRC = $(shell find . -type f -name '*.cpp')

CXX_FLAGS = -std=c++11 -O3 -Wall -g

TARGETS := demo

.PHONY: clean all build

all: build

build: $(TARGETS)

$(TARGETS): $(SRC)
	$(CC) $(CXX_FLAGS) -o $@ ./cmd/$@/main.cpp

clean:
	-rm -f $(TARGETS)