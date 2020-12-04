---
type: tasks
---
# Множества

## Базовые задачи
1. Дана строка. Вернуть множество из всех его символов.
1. Дана строка и множество символов. Удалите из строки все символы из множества. Например, если дана строка `"hello world"`
и множество `{'h', 'l', 'x'}`, вы должны вернуть строку `"eo word"`. Потому что символы `'h'` и `'l'` удаляются.
    * Алгоритм решения. Перебирайте все символы строки; создайте список, заполненный символами, которых нет в множестве;
    превратите список обратно в строку с помощью функции `join`.
1. Дана строка, содержащая текст. Вернуть **список** из всех его слов. Слово — это последовательность
из непробельных символов, в которых в начале и конце нет знаков препинания. Но они могут быть внутри слова, например, «сине-зеленый».
    Алгоритм:
    * Чтобы получить все знаки препинания, напишите в начале файла `import string` и используйте константу `string.punctuation`.
    Это строка, содержащая все знаки препинания.
    * Используйте функцию `.strip`, которая удаляет указанные символы из начала и конца строки. 
1. 
    1. Даны две строки, каждая содержит текст. Вернуть множество слов, которые встречаются и в первом,
    и во втором предложении.
    1. Аналогично, но нужно искать совпадения слов, игнорируя регистр.    

## Проверка орфографии
Загрузите файл со списком английских слов, но пока не трогайте его:
[english_words.zip](https://github.com/dwyl/english-words/blob/master/words_alpha.zip?raw=true).
А еще найдите (например, на сайте [lib.ru](http://lib.ru)) какой-нибудь длинный английский текст.
1. Дано **множество** строк (орфографический словарь), это слова, которые мы будем считать орфографически правильными.
Считаем, что эти слова все указаны в нижнем регистре. И дан **список** слов, которые надо
проверить. Верните список слов, которые не нашлись в словаре. Например, `orpho_check({'a', 'b', 'c'}, ['a', 'bb', 'c', 'cc', 'bb']`
должно вернуть `['bb', 'cc', 'bb]`.
1. Дан файл, содержащий текст на английском. Верните **список** слов в этом тексте. Вы уже решали такую задачу в прошлом разделе
про файлы, только здесь вам дополнительно надо удалить знаки препинания из начала и конца слова. Слова не нужно
приводить к нижнему регистру.
1. Дан файл с орфографическим словарем, фактически, вам будет дан загруженный ранее файл `words_alpha`. Он состоит только
из орфографически корректных слов. Верните **множество** слов из этого файла.
1. Дано три файла. Файл со словарем, файл с текстом, файл для вывода результата.
Прочитайте из первого файла словарь. Прочитайте из второго файла **список** слов. Для чтения файлов вызывайте функции,
которые реализовали в прошлых задачах. Распечатайте на экране все слова,
которые не нашлись в орфографическом словаре, и выведите их же в файл с результатом. На экране и в файле с результатом
должно быть распечатано **одно и то же**, с точностью до символа. При проверке слова приводите его к нижнему регистру,
но распечатывать неправильное слово надо в исходной форме, без приведения к нижнему регистру.

    **Теперь будем пытаться исправлять ошибки**
1. Дано слово, верните **множество** слов, которые получаются из исходного удалением одной из букв. Например, слово `ccat`
должно превратиться в множество `{'cat', 'cct', 'cca'}`.
1. Дано слово, верните **множество** слов, которые получаются из исходного слова дописыванием одной буквы.
Например, слово `at` должно превратиться в множество `{'aat', 'bat', 'cat', 'dat', ... , 'abt', 'act', 'adt', 'aet', ..., 'ata', 'atb', atc', ...}`.
Чтобы это сделать, убедитесь, что в начале файла написано `import string`, после чего вам становится доступна константа
`string.ascii_lowercase`, в которой находятся все буквы, и вы можете перебрать эти буквы в цикле.
1. Дано слово, верните **множество** слов, которые получаются из исходного слова перестановкой двух соседних букв. Например, слово
`hello` должно превратиться в множество `{'ehllo', 'hlelo`, 'hello`, 'jelol'}`.
1. Дано слово, и множество слов, являющееся орфографическим словарем. Верните множество слов, которые, во-первых, находятся в одном из
множеств из трех предыдущих пунктов, а во-вторых, находятся в орфографическом словаре.
1. Решите задачу 4 (дано три файла...), но со следующим исправлением: в файл и на экран выводятся все слова из исходного текста,
по слову на отдельной строке. Но если слова нет в орфографическом словаре, то перед ним выводится восклицательный знак,
а после него в строке выводятся все варианты замены этого слова на правильные.
 