# Основы программирования, Java

## Задача экзамена

[Транслитерация](https://docs.google.com/document/d/e/2PACX-1vRwN9JYuqYm71BMPN8EzhOxQWHWnxQLfzY5E4bhJOsIbbvI6EgxkY2URyT1106_CbxRGUi0-bSWJwb3/pub)

## Задачи

[Задачи](tasks.md)

[Частые проблемы в решениях](common-mistakes.md)

## Материалы
* [Базовый синтаксис](basic-syntax.md)
* [Типы и литералы](lecture1-types-literals.md)
* [Строки, управление, массивы](lecture2-strings-if-for-functions-arrays.md)
* [Дополнительная лекция: null и многомерные массивы](null-and-multidimensional-arrays.md)
* [Чтение и запись файлов](lecture3-io.md)
* [Регулярные выражения](lecture4-regexp.md)
* [Объектно-ориентированное программирование, основы](oop)
* Коллекции в Java
* Объектно-ориентированное программирование, наследование и
лямбда выражения.

## Bat файл для запуска программ
Рекомендую использовать следующий bat файл для запуска программ. В нем настроены кодировки так, чтобы в ваших программах
корректно работал русский язык. Убедитесь только, что вы пишете свою программу в кодировке utf-8.

    del *.class
    set PATH=путь до каталога установки java/bin;%PATH%
    javac.exe -encoding utf8 YourClass.java
    java.exe -Dfile.encoding=CP866 YourClass
    pause

Еще одна версия bat файла, в ней не нужно указывать имя класса. Файл `HelloWorld.bat` будет запускать класс `HelloWorld`,
а если его переименовать в `Abc.bat`, он будет запускать класс `Abc`.

    del *.class
    set PATH=путь до каталога установки java/bin;%PATH%
    javac.exe -encoding utf8 %~n0.java
    java.exe -Dfile.encoding=CP866 %~n0
    pause
