---
type: tasks
---

# Ассоциативные массивы

1. Реализуйте схему транслитерации. Создайте ассоциативный массив, который сопоставляет буквам русского алфавита строку из
букв английского. Например, `{'а' -> "a", 'я' -> "ja", 'ш' -> "sh"}` и т.д. Необходимо реализовать функцию, которая по слову
из русских букв возвращает слово из латинских.

    * Дополнительное усложненное задание. Дан файл с текстом на русском, вывести в другой файл тот же текст, но латинскими буквами. Проследите,
    что если слово было с заглавной буквы, то и результат транслитерации должен быть с заглавной. Если слово состоит только из
    заглавных букв, при этом оно имеет хотя бы две буквы, то и результат должен состоять только из заглавных букв. Все знаки
    препинания и пробелы между словами должны остаться без изменений. Подойдет ли `java.util.Scanner` для этой задачи?

1. Дана строка. Посчитать каждый символ, сколько раз он встретился. Например, строка "banana" должна выдать массив `Map<Character, Integer>`:

            'b' -> 1
            'a' -> 3
            'n' -> 2

    Необходимо реализовать следующий алгоритм. Сначала вы имеете пустой `Map`. Потом читаете по очереди каждую букву, например, в слове `banana`,
    сначала читаете `b`.
    Обновляем `Map` и указываем, что `b` встретилась 1 раз: `{b -> 1}`. Дальше читаем `a`, обновляем `Map`: `{b -> 1, a -> 1}`. После буквы `n`
    обновляем: `{b -> 1, a -> 1, n -> 1}`. Наконец, после чтения `a` мы замечаем, что `a` уже записано как встретившееся 1 раз,
    поэтому обновляем `Map`, что оно встретилось уже два раза: `{b -> 1, a -> 2, n -> 1}`. Процесс продолжается, пока не будут прочитаны
    все буквы.
    
    Используйте этот же алгоритм в двух следующих задачах.

1. Аналогично предыдущему, но выдать `Map<Character, List<Integer>>` со списком индексов, где встретился символ:

            b -> [0]
            a -> [1, 3, 5]
            n -> [2, 4]
            
1. Частотный словарь слов из файла. Т.е. нужно прочитать слова из файла и посчитать, сколько раз они встретились. Приводите слова к нижнему регистру перед подсчетом. Желательно использовать большой текст на русском, например, возьмите его на http://lib.ru. Используйте `Scanner.useDelimiter()`, чтобы указать сканеру, какие символы считать разделителями слов.
   * Сначала используйте `HashMap`
   * Потом исправьте программу так, чтобы она использовала все три вида массивов: HashMap, TreeMap, LinkedHashMap. Соответственно, выведите ответ три раза. Не дублируйте код.
   * Выведите слова в порядке уменьшения частот. Вам потребуется отсортировать список List<Map.Entry<String, Integer>>.

