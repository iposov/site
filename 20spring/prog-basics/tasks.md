---
type: tasks
---

## Задачи с сайта Coding.bat
   
[Codingbat](http://codingbat.com)
   
Зарегистрируйтесь на этом сайте и решайте задачи из разделов
`Warmup-*`, `String-*`, `Logic-*`, `String-*`, `Array-*`.
Из каждого раздела необходимо решить хотя бы $6 - x$ задач, где
$x$ это сложность раздела, например, у раздела `String-3` она равна 3.
 
## Задачки на базовые возможности Java, теория чисел
    
1. `PrimalityTest`. Дано число, верните, простое ли оно
1. `SieveOfEratosthenes`. Алгоритм [Решето Эратосфена](https://neerc.ifmo.ru/wiki/index.php?title=%D0%A0%D0%B5%D1%88%D0%B5%D1%82%D0%BE_%D0%AD%D1%80%D0%B0%D1%82%D0%BE%D1%81%D1%84%D0%B5%D0%BD%D0%B0), еще одно [описание с картинками](https://ru.wikipedia.org/wiki/%D0%A0%D0%B5%D1%88%D0%B5%D1%82%D0%BE_%D0%AD%D1%80%D0%B0%D1%82%D0%BE%D1%81%D1%84%D0%B5%D0%BD%D0%B0).
    1. Дано натуральное `n`, верните массив `boolean[]` размера `n + 1`, в котором по индексу
    `i` записано, верно ли что число `i` простое.
    1. Дано натуральное `n`, верните массив `int[]`, в котором перечислены в порядке возрастания
    все простые числа от 1 до `n`. Воспользуйтесь функцией из предыдущего подпункта.
    
## Массивы.

Создайте класс `ArraysTasks` и заполните его функциями:
    
1. Дано `n`, верните массив из первых n четных чисел: 2 4 6 8 ... 2n
1. Дан массив, функция проверяет, есть ли в массиве одинаковые элементы: `boolean hasSimilar(int[] a)`
1. Дан массив, верните среднее значение всех элементов массива. (т.е. сумму элементов, деленную на количество элементов)
1. Остортируйте массив по убыванию: `private static int[] sortReverse(int[] a)`. Используйте для
этого `Arrays.sort()` с одним аргументом. Содержимое исходного массива меняться
не должно, нужно вернуть новый отсортированный массив. Для копирования массива используйте и `Arrays.copyOf()`.

Пример:
    ```
    int[] x = {20, 10, 30};
    int[] y = sortReverse(x);
    System.out.println(Arrays.toString(x)); // печатает 20 10 30
    System.out.println(Arrays.toString(y)); // печатает 30 20 10
        ```
## Чтение и запись в файлы

Создайте класс `IOTasks` и заполните его функциями:

1. Дан файл, содержащий несколько целых чисел, разделенных пробелами и переводами строк.
Прочитайте из него все числа и выведите на экран их сумму.
    1. Решите предыдущую задачу, но считайте, что в файле могут быть и слова, не являющиеся числами.
    Эти слова надо игнорировать. Используйте `scanner.hasNextInt()`, не используйте
    `scanner.useDelimiter()`.
1. Дан массив строк `lines` и имя файла. Запишите в файл заданные строки построчно.
Не забудьте, что есть цикл "for each".
1. Даны два файла. Прочитайте из первого файла текст и перепишите его во второй файл,
исправив ошибки в регистрах букв. Например, если исходный текст был:

    ```
    какой-то Текст с неправильными   Регистрами букв!  втОРОе предложение Этого текста.
    ```

    то должно получиться:

    ```
    Какой-то текст с неправильными регистрами букв! Второе предложение этого текста.
    ```

    Вы должны читать исходный файл по словам, разделенными пробельными символами, и
    следить за последним символом очередного слова. Если это символ конца предложения
    (точка, восклицательный знак, вопросительный знак), нужно сделать так, чтобы следующее слово
    начиналось с заглавной буквы. Иначе следующее слово должно начинаться со строчной буквы.
    Заглавные буквы внутри слов нужно изменить на строчные.

1. *Скорочтение*. Класс `FastReader`. Прочитать из файла текст, разбить его на слова.
Показыавть в консоли слова текста с большой скоростью. Т.е. программа показывает первое слово, делает паузу, показывает вместо него второе слово, потом пауза, третье слово и т.д.
Если после слова стоит знак препинания, его нужно отображать. После знаков препинания (запятых, точек и т.п.) нужно чуть увеличивать паузу.
    * Для того, чтобы перезаписать слово в консоли, выводите символ `'\r'`, этот символ не переводит строку, а возвращает каретку в начало.
    * Вызывайте метод `System.out.flush()` после каждого вызова `System.out.print()`. Иначе результат может не появиться на экране.
    
## Двумерные массивы

Создайте класс `TwoDimensionalArrayTask`, запишите следующий код в метод
`main` и заставьте его работать:

    ```
    char[][] c = createTable(20, '.');
    printTable(c);

    System.out.println("============ Заполним строки: ==========");
    fillFirstAndLastLines(c, '#');
    printTable(c);

    System.out.println("============ Заполним столбцы: =========");
    fillFirstAndLastColumns(c, '#');
    printTable(c);
    ```
1. `createTable(20, '.')` возвращает массив char 20 на 20, все символы в массиве должны быть '.'
1. `printTable` печатает массив на экран. При этом выводите символы подряд, без запятых.
Можете вывести пробелы между символами, так получается более красиво.
1. `fillFirstAndLastLines` Воспользуйтесь `Arrays.fill()`, чтобы заполнить первую и последнюю строки
массива символами '#'.
1. `fillFirstAndLastColumns` Заполните первый и последний столбец массива символами '#'.

## Регулярные выражения.
1. Дана строка, проверьте, что в ней содержится корректный email адрес. Будем считать, что корректный
   email состоит из имени пользователя (несколько латинских букв, точек, подчеркиваний, минусов),
   далее следует символ @, далее идет домен (тоже несколько латинских букв, точек, подчеркиваний,
   минусов), в конце должна быть точка и от двух до четырех латинских букв.
   Т.е. конец должен выглядеть как .com, .ru и т.п. Помните, что обычная точка означает любой символ,
   и ее может понадобиться экранировать. Используйте метод `matches()` класса String
   1. Решите прошлую задачу еще раз, но используйте регулярное выражение для email по ссылке
   [emailregex.com](https://emailregex.com/)
1. Дана строка с текстом на русском языке, в которой автор неправильно расставил пробелы перед запятыми. Например, `Это строка  , у которой зачем-то написаны два пробела перед запятой`. Нужно найти все пробельные символы перед запятыми и удалить их. Должно получиться `Это строка, у которой зачем-то написаны два пробела перед запятой`. Используйте метод `replaceAll()` класса String.
1. Дана строка. Найдите в ней все слова, написанные через дефис и поменяйте две половинки этих слов местами. Например, строка "Какая-то сине-зеленовая трава" должна превратиться в "то-Какая зеленовая-сине трава". Используйте метод `replaceAll` класса String и `$` для ссылки на группы.
1. Дана строка. Посчитайте, сколько раз в ней встречаются символы "кот", в произвольном регистре. Т.е. Кот и КОТ тоже надо считать. Используйте `Matcher` с методом `find()`. При создании регулярного выражения с
помощью класса `Pattern` установите режимы `Pattern.UNICODE_CASE` и `Pattern.CASE_INSENSITIVE`.
    
        * Необязательное задание. А если надо искать слово "кот", т.е. не считать, например, слово "который"? Попробуйте два способа указать, что "кот" должно быть частью другого слова. 1) найдите на странице с лекцией ссылку на все возможности регулярных выражений в Java, и там найдите,
        как указать word boundaries 2) используйте конструкции
        наподобие (\s\|$) - это означает либо пробельный символ, либо конец строки.
1. Даны два имени файла. Откройте первый, замените в нем все числа (последовательности цифр) на 
эти же числа, увеличенные на один. Запишите результат во второй файл. Используйте функцию
`Files.readString(Path, DefaultEncoding.UTF-8)` для чтения файла, прописав необходимые `import`.
Для записи файла найдите аналогичную функцию.

## Класс "время"

Для решения этой задачи достаточно прочитать учебник по ООП до раздела "Конструкторы"
включительно.

Вы должны создать класс `ExperimentsWithTime`, чтобы в нем проверять всё, что вы сделали
с часами. Нужно проверить работу каждого пункта, который вы выполните.
Пожалуйста, в окончательной версии не ставьте комментарии на куски кода, которые
проверяют работу вашего класса, обычно так делают, чтобы старые проверки не мешали
новым. Так вот, не надо комментировать проверки.

1. Заведите класс `Time`, который хранит информацию о количестве часов 
и минут. Т.е. введите два поля.
1. Добавьте конструктор, в котором можно сразу указать количество часов и минут.
1. Сделайте метод `String show();`, который возвращает строку с часами и минутами
через двоеточие. Например, он может вернуть `"09:10"`.
1. Сделайте методы isDay(), isMorning(), isEvening(), isNight(), которые
возвращают верно ли, что сейчас, соответственно, день, утро, вечер, ночь. Придумайте
сами, начиная с какого времени утро переходит в день и т.п.
1. Сделайте метод `String sayHello()`, который возвращает строку "Доброе утро",
"Добрый день" и т.п. в зависимости от текущего времени.
1. Сделайте метод, который добавляет указанное количество минут:
`c.add(20)`. Если было `"9:10"`, то должно получиться `"9:30"`. А если было
`"9:50"`, должно получиться `"10:10"`. Еще пример. `"9:20"` плюс 120 минут
должно быть `"11:20"`.
 


## Рациональные числа

# Класс "Рациональные числа"

Сделаем класс Rational, это рациональные числа, для которых хранится их числитель
и знаменатель. С рациональными числами можно совершать арифметические операции.

1. Создайте класс и добавьте поля n и d (numerator, denominator - числитель,
знаменатель). Убедитесь, что поля приватные.
1. Класс должен иметь конструкторы вида `Rational(3, 2)` и `Rational(3)`.
1. Добавьте метод `public String toString()`, который возвращает естественное
представление числа в виде строки, например, `5/7`. Если знаменатель равен 1,
его не нужно писать. Если числитель ноль, то "0", а не "0/2" и т.п.
1. Добавьте метод double toDouble(), который возвращает значение в виде double.
1. Добавьте сокращение дроби в конструктор: поделить числитель и знаменатель
на НОД, убедиться, что знаменатель положительный.
1. Арифметические функции. add, sub, mul, div:

        Rational r1 = r2.add(r3); // создает новое число
        r2.addInPlace(r3); // добавляет к r2 и изменяет его
        
   Протестируйте! Проверьте, например, что \\(\\frac16 + \\frac13 = \\frac12\\),
   и проверьте другие аналогичные равенства для других арифметических операций.
1. Создайте функцию ___не в Rational___, которая по n считает
\\(1 + \\frac12 + \\frac13 + \\frac14 + \\frac15 + ... + \\frac1n\\)
Проверьте, что f(1) = 1, f(2) = 1.5, f(3) = 1.833333333333333
1. Чему равно f(20)? Почему оно равно тому, чему равно? Как исправить?
1. Добавьте get- методы для числителя и знаменателя. Чтобы Rational стал совсем неизменяемым, закомментируйте методы `*InPlace()`.
1. Создайте статические константы ONE и ZERO типа Rational, хранящие элементы 0, 1 в виде рациональных чисел.
1. Сделайте статическим метод поиска НОД (или сокращения)
1. Создайте статические версии арифметических операций: `static Rational add(Rational r1, Rational r2)` и т.п. Эти операции создают новое число, вы можете переиспользовать старые арифметические операции.
1. (*) Решите аналогичную задачу про комплексные числа. Они хранятся в виде
    вещественной и мнимой части.
    
## Рисование

Класс Drawing (изображение) хранит изображение в виде массива символов `char[][]`. Например,
```
.........
.........
....x....
.........
```
1. Создайте конструктор, в котором указывается размер (сколько строк и столбцов) и символ, которым изначально все заполнить. Например,
new Drawing(20, 30, '.')
1. Создайте метод `print()`, он печатает на экране изображение
1. Метод `setPoint(x, y, char)` рисует один символ в изображении. Методу нужно указать, где и какой символ поставить.
1. Методы `drawVerticalLine(...)`, `drawHorizontalLine(...)` рисуют вертикальную
или горизонтальную линию от заданной точки до заданной. Определите сами параметры для методов, они должны определять расположение линии и символ, которым линию рисовать.
1. Метод `drawRectangle()` рисует прямоугольник по двум противоположным углам, стороны прямоугольника вертикальны и горизонтальны. Используйте методы, реализованные ранее.
1. Необязательно: Рисование произвольной линии (см. необязательную задачу за прошлый семестр)
1. Рисование круга (или окружности — необязательно). Пользователь указывает центр и радиус, программа должна пройтись по всем точкам поля и, если они лежат в круге, зарисовать их указанным символом.
1. Реализуйте метод `draw(x, y, Drawing d)` нарисовать одно изображение на другом. При вызове метода указывается, где и какое изображение рисовать.
1. (Необязательная задача). Сделайте Drawing неизменяемым: все функции рисования возвращают новый Drawing и не меняют текущий.
Чтобы не портить старый класс, назовите новый ImmutableDrawing.
1. Используйте все реализованные вами ранее методы, чтобы нарисовать Джоконду.
Ну или домик.
