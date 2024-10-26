# Определяем компилятор и флаги
CC = gcc
CFLAGS = -Wall -Wextra -g

# Определяем целевые файлы
TARGET = factorial_program
OBJECTS = main.o factorial.o

# Правило по умолчанию для сборки программы
all: $(TARGET)

# Правило для сборки исполняемого файла
$(TARGET): $(OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

# Правило для компиляции main.c
main.o: main.c factorial.h
	$(CC) $(CFLAGS) -c main.c

# Правило для компиляции factorial.c
factorial.o: factorial.c factorial.h
	$(CC) $(CFLAGS) -c factorial.c

# Правило для очистки временных файлов
clean:
	rm -f $(OBJECTS) $(TARGET)
