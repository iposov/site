# Коллекции в Java

Коллекции нужны, чтобы много однотипных элементов. Коллекции похожи
на массивы, но поддерживают намного больше операций. Например,
у массива невозможно менять размер

```
int[] a = new int[10];
```

`a` — это всегда массив размера 10.

В коллекциях можно добавлять, удалять элементы, в начало, в конец
и т.п.

То, что мы использовали в python, например, списки, множества, 
в Java преставлены как коллекции.

Коллекции позволяют
 - добавлять элемент add()
 - удалять элемент remove()
 - очищать clear()
 - добавить все элементы другой коллекции addAll()
 - можно перебирать элементы коллекции в цикле
 - проверить, есть ли в ней элемент: contains
 
**Списки** — это коллекции, в которых элементы имеют порядок. Т.е. для
списка осмысленно говорить о первом, втором, последнем элементе.

**Множества** — это коллекции, в которых любой элемент находится не
более одного раза. Если добавить в коллекцию элемент дважды, в коллекции
он будет сохранен только один раз.

**Замечание**. Множества сравнивают объекты по значению. Не по ссылке.
Т.е. если вы добавите два раза одну и ту же строку:
```
mySet.add("abc")
mySet.add("abc")
```
строка "abc" сохранится один раз.

**Замечание**
Если хотите хранить свои объекты, например, точки: класс с двумя
полями x, y, нужно научить Java сравнивать точки, чтобы она понимала,
что точки с одинаковыми координатами это одни и те же точки. Для
этого в классе Точка надо реализовать методы `equals` и `hashCode`.
(может, обсудим позже эти методы).

## Дополнительные операции для списков

 - добавлять элемент по какому-то индексу: add(индекс, объект)
 - удалить элемент по индексу: remove(индекс)
 - получить элемент с указанным индексом: get(индекс)
 
## Операции со множествами
 Особенность множеств в том, что у них обычно очень быстро работает
 операция contains.
 
 Операция contains для списков — это перебор всех элементов. Поэтому,
 чем длинее список, тем дольше работает contains
 
# Конкретные коллекции

## Списки: ArrayList и LinkedList
Отличаются реализацией. ArrayList хранит набор элементов внутри массива,
массив чуть больше, чем нужно хранить элементов, поэтому при добавлении
нового элемента массив не обязательно увеличивать.

Т.е. ArrayList, содержащий 10, 20, 30 внутри устроен примерно так:
```
    a = [10, 20, 30, 0, 0, 0, 0, 0]
    size = 3
```
Еще есть LinkedList, он реализован как связанный список, когда каждый
элемент хранит значение и ссылку на следующий элемент.

**В теории** разница между ArrayList и LinkedList в том, какие
операции вы собираетесь с ними выполнять. Условно, вставка элемента
в начало списка в LinkedList быстрее.
**На практике** рекомендуется всегда использовать ArrayList, почти
всегда он эффективней и по времени, и по памяти.

## Множества: HashSet, LinkedHashSet, TreeSet

HashSet — самое простое множество, которое почти всегда подходит
для задачи.

LinkedHashSet — при переборе элементов этого множества они перечисляются
в порядке добавления.
```
// s - LinkedHashSet
s.add(10)
s.add(20)
s.add(10)
s.add(30)
for (int x : s) // аналогично перечислению массива
   print(s)     // 10, 20, 30
```
Аналогичный код для HashSet выдаст эти числа в произвольном порядке.

TreeSet — при переборе элементов этого множества они перечисляются
в порядке возрастания:

```
s - TreeSet
s.add(30)
s.add(10)
s.add(20)
for (int x : s)
    print(s) // 10, 20, 30
```

# Создание коллекции

Можно написать `ArrayList a = new ArrayList()`.
Так писали раньше до Java 1.5, и была проблема,
потому что непонятно было, какой тип данных
лежит в списке: `??? o = a.get(5)`, т.е.
мы берем пятый элемет списка, но какой у него
тип??

Сейчас надо обзательно писать для всех коллекций
в угловых скобках тип содержимого:
`List<String>` либо `List<Rational>` и т.п.
Если вы забудете написать, программа скомпилируется, но будут
выдаваться предупреждения про raw type.

Поэтому теперь мы понимаем, что надо написать 
`ArrayList<String> a = new ArrayList<String>();`.

Это, конечно, очень длинно. В Java можно пропустить содержимое
угловых скобок справа. Оно автоматически определяется по тому,
что написано слева: `ArrayList<String> a = new ArrayList<>();`.
Две угловые скобки подряд `<>` называются diamond-оператором.

Последний шаг. Мы указали, что `a` имеет тип `ArrayList<String>`.
Но при использовании `a` нам важно только то, что это список.
То, что это именно ArrayList важно только в момент создания.
Поэтому можно написать
`List<String> a = new ArrayList<>();` и, кстати, можно пойти
дальше, можно написать
`Collection<String> a = new ArrayList<>()`. Теперь `a` воспринимается в коде как коллекция,
но реально работает как список ArrayList<>().

Аналогия, мы изучим ее позже: `Animal a = new Cat()`.

Еще один способ создать список с помощью ArrayList:
`var a = new ArrayList<String>()`, это недавно появившаяся возможность вводить
переменные словом `var`. Здесь, конечно, не допустим diamond оператор, потому что невозможно
угадать тип элементов. Тип переменной `a` будет `ArrayList<String>`.

# Как хранить числа в коллекциях

Нельзя написать `List<int>` или `List<char>`, внутри угловых скобок
допустимы только классы. String, Rational и т.п. Но не 8 базовых
типов.

Надо писать `List<Integer>` или `List<Character>` или `List<Boolean>`
и т.п. У каждого базового типа есть соответствующий «класс обертка».

* int -> Integer
* double -> Double
* char -> Character
* и т.п.

Эти классы хранят внутри себя значения соответствующего типа:

```
Integer i = new Integer(10);
int x = i.intValue(); // достать из объекта значение
```

К счастью, сейчас в Java превращение int в Integer и наоборот
происходит автоматически. Можно писать так:

```
Integer i = 42;
```

42:int автоматически превращается в Integer c числом 42. Это
называется autoboxing = автозаворачивание.

```
int x = i; //где i: Integer
```

автоматически разворачивается значение из i.

Поэтому в подавляющем большинстве случаев вы не должны вообще думать
о типе Integer, напишите его только при создании коллекции.
