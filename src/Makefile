APP_NAME = fibonacci
SRC_FILE = fibonacci.c
BIN_DIR = ../usr/local/bin

all: build

build:
	@echo "Компиляция программы..."
	@mkdir -p $(BIN_DIR)
	$(CC) $(CFLAGS) $(SRC_FILE) -o $(BIN_DIR)/$(APP_NAME) -Wall -Werror
	@echo "Компиляция завершена!"

clean:
	@echo "Очистка..."
	@rm -f $(BIN_DIR)/$(APP_NAME)

