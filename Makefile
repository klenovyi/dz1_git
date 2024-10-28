
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

# Определяем целевые файлы для тестов 
TEST_TARGET = test_program
TEST_OBJECTS = test_factorial.o factorial.o

# Правило для компиляции тестов
test_factorial.o: test_factorial.c
	 $(CC) $(CFLAGS) -c test_factorial.c

# правило для сборки тестов 
$(TEST_TARGET): $(TEST_OBJECTS)
	$(CC) $(CFLAGS) -o $@ $^

test: $(TEST_TARGET)
	./$(TEST_TARGET)

# Правило для очистки временных файлов
clean:
	rm -f $(OBJECTS) $(TARGET) $(TEST_TARGET) $(TEST_OBJECTS)
