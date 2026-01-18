#!/bin/bash
set -e

BINARY=usr/local/bin/fibonacci

# Проверка наличия бинарника
if [ ! -f "$BINARY" ]; then
  echo "Бинарный файл fibonacci не найден"
  exit 1
fi

# Тест 1: корректный ввод
INPUT="10"
EXPECTED="55"

RESULT=$(echo "$INPUT" | $BINARY | tail -n 1)

if [ "$RESULT" != "$EXPECTED" ]; then
  echo "Тест 1 не пройден"
  echo "Ожидалось: $EXPECTED"
  echo "Получено: $RESULT"
  exit 1
fi

# Тест 2: граничное значение
INPUT="0"
EXPECTED="0"

RESULT=$(echo "$INPUT" | $BINARY | tail -n 1)

if [ "$RESULT" != "$EXPECTED" ]; then
  echo "Тест 2 не пройден"
  echo "Ожидалось: $EXPECTED"
  echo "Получено: $RESULT"
  exit 1
fi

# Тест 3: некорректный ввод
INPUT="50"

RESULT=$(echo "$INPUT" | $BINARY || true)

echo "$RESULT" | grep -q "ERROR"

if [ $? -ne 0 ]; then
  echo "Тест 3 не пройден (ожидалась ошибка)"
  exit 1
fi

echo "Все тесты пройдены успешно"

