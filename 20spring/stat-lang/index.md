---
type: tasks
---
# Статистические методы языковой инженерии

## Материалы

1. [Лекции Якова Эйзенштейна по обработке естественного языка](https://github.com/jacobeisenstein/gt-nlp-class/blob/master/notes/eisenstein-nlp-notes.pdf)
1. [Документация по NLTK](https://www.nltk.org/api/nltk.html)

## Задания

Технологии для выполнения заданий:
1. IntelliJ IDEA Ultimate Edition, бесплатная
студенческая лицензия
1. Python 3.8
1. Conda менеджер пакетов python
1. Jupyter notebooks внутри IntelliJ IDEA
1. NLTK фреймворк для работы с естественным языком  

### Классификация, наивный Байес

1. Найти русские тексты двух произвольных
авторов на сайте [lib.ru](http://lib.ru).
1. Разбить тексты на предложения
1. Обучить классификатор на основе алгоритма наивного
Байеса определять автора предложения по входящим в него
словам.
1. Гиперпараметр: $\alpha$ из алгоритма сглаживания
1. Разбить корпус на 80% + 10% + 10%, тестовый, тренировочный
валидационный.

### Коллокации
Найти большое русское произведение любого автора
на сайте lib.ru, отфильтровать слова с маленькими
частотами. Найти лучшие коллокации на основе метрики
DICE и любых двух других. Сравнить списки полученных
коллокаций.
  
### N-грамм модель языка

1. Построить N-грамм модели языка на основе всех
текстов, найденных в задаче про классификацию методом
наивного Байеса.
1. Гиперпараметр: алгоритмы сглаживания и их гиперпараметры
1. Разбить корпус на 80% + 10% + 10%, тестовый, тренировочный
валидационный.
1. Определить лучиший алгоритм сглаживания на основе
perplexity и определить его perplexity.
1. Сгенерировать 100 слов на основе полученной модели.
1. Повторить предыдущие действия для N = 1, 2, 3, 4, 5.

### Снятие неоднозначности, классификация по контексту

1. Взять тексты из первого задания. Выбрать в них два частых
существительных и "объединить" их, как будто это одно
слово.
1. Найти контексты каждого вхождения объединенного слова:
по 5 слов в обе стороны. Получается обучающий корпус
из контекстов, для которых нам известно, какое было 
слово в середине до объединения.
1. Обучить классификатор для определения исходного слова
по контексту, использовать 80% корпуса.
1. 10% корпуса + 10% — это тестовый и валидационных
корпусы.
1. Оценить качество классификатора.

### Снятие неоднозначности, кластеризация по контексту

В условиях предыдущей задачи кластеризовать контексты на
два кластера. Сравнить полученную кластеризацию с реальным
разделением контекстов по исходным словам.

### Скрытые марковские процессы, частеречная разметка

1. Загрузить корпус с сайта OpenCorpora, выбрать тексты,
в которых завершена разметка частей речи.
1. Обучить с его помощью потоковый классификатор частей
речи, встроенный в NLTK
1. Оценить качество классификации.
