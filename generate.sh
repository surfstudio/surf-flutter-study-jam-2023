#!/usr/bin/env bash
# Скрипт кодогенерации. Последовательно запускает build_runner и форматирует проект

BLUE='\033[1;34m'
DEFAULT='\033[0m'
GREEN='\033[1;32m'

echo -e "${BLUE}------ Запускаем build_runner ------${DEFAULT}"
flutter pub run build_runner build --delete-conflicting-outputs
echo -e "${BLUE}------ Форматируем проект ------${DEFAULT}"
dart format .
echo -e "${GREEN}------ Если выше нет ошибок, значит программа завершена успешно ------${DEFAULT}"
