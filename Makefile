CC = clang++
CFLAGS = -std=c++20 -Wall -Weffc++ -Wextra -Wsign-conversion
SRC_DIR = src
INC_DIR = include
BIN_DIR = bin
EXECUTABLE = bin.exe

all: $(BIN_DIR)/$(EXECUTABLE)

$(BIN_DIR)/$(EXECUTABLE): $(SRC_DIR)/*.cpp
	mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) -I$(INC_DIR) $^ -o $@

clean:
	rm -rf $(BIN_DIR)/*
