---
type: tasks
---
# Математические выражения в Ascii

Задача предлагает вам написать превращение математических выражений в традиционную, 
двумерную форму. Например, выражение `(x + y) / 10 - 1` нужно превратить в:
```
x + y
――――― - 1
 10 
```
Подобрать Unicode символы для отображения математических знаков, например, горизонтальных
линий у дроби, вам нужно будет самостоятельно.

## Структура выражения
Сначала мы создадим классы для представления математического выражения. Только в следующей
части мы научимся превращать предложенное пользователем математическое выражение в
указанные классы.

1. Создайте интерфейс Expression, он имеет методы `int width()`, `int height()` и
`int baseLine()`. Первые два означают высоту и ширину выражения в символах. Третий
означает положение базовой линии. В примере выше, размеры выражения такие: ширина равна
3, высота равна 3, базовая линия во второй строке, т.е. именно во второй строке
находятся  