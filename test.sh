#!/bin/bash
set -eux

BINARY="usr/local/bin/fibonacci"

if [ ! -f "$BINARY" ]; then
  echo "Ошибка: бинарный файл не найден по пути $BINARY"
  exit 1
fi

INPUT="В этом примере строки есть несколько длинных слов. Проверяем корректность работы программы!"

EXPECTED="несколько корректность"

RESULT=$(echo "$INPUT" | "$BINARY" | tail -n 1 | sed 's/.*: //')

if [ "$RESULT" == "$EXPECTED" ]; then
  echo "Тест пройден"
else
  echo "Тест не пройден"
  echo "Ожидалось:"
  echo "$EXPECTED"
  echo "Получено:"
  echo "$RESULT"
  exit 1
fi

