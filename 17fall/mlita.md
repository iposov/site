# Математическая логика и теория алгоритмов

## ИДЗ 1
[Индивидуальное домашнее задание №1](https://github.com/iposov/site/raw/master/17fall/idz1.pdf)

## Пример решения ИДЗ 2

Решение задачи для простой грамматики.

```cpp
#include <iostream>
#include <string>

/*c
Язык. Арифметические выражения из переменных "a", сложений и скобок:
  
  a
  a + a
  a + (a + a)
  (a + (a + a) + a)
  
Грамматика:

1) <expr> ::= <item><ending>

2) <ending> ::=
3) <ending> ::= + <expr>

4) <item> ::= a
5) <item> ::= ( <expr> )
*/

using namespace std;

//строка, введенная пользователем
string input;
//текущая позиция чтения символа
int pos;

//Возвращает текущий символ. Символ конца строки заменяется на $
char read() {
    char ch = input[pos];
    if (! ch)
        return '$';
    else
        return ch;
}

//Перемещает указатель чтения символа вперед
void next() {
    pos++;
}

//Сообщает об ошибке
void error() {
    throw exception();
}

/*
Перечисление заголовков функций. Необходимо, чтобы можно было вызывать функцию до того, как
описан ее код. Без этого получается, что read_expr() вызывает read_item(), read_item() вызывает
read_expr() и невозможно выбрать, какую функцию описывать раньше.
PASCAL программисты тоже должны описывать функции заранее, для этого используется следующий синтаксис:
  procedure read_expr; forward;
Тело функции не описывается, оно будет описано позже.
*/
void read_expr();
void read_ending();
void read_item();

// НАЧАЛО ФУНКЦИЙ РАЗБОРА
// В решении достаточно указывать только эти функции. Все остальное в этом файле нужно только, чтобы программу можно было запустить и проверить.

void read_expr() {
    switch (read()) {
        case 'a' :       //два case подряд означают, что прочитанный символ либо a, либо (
        case '(' :
            //правило 1
            //читаем <item>
            read_item();
            //читаем <ending>
            read_ending();
            break;
        default :       //во всех остальных случаях - error
            error();
    }
}

void read_ending() {
    switch (read()) {
        case '$':
        case ')':
            //правило 2
            break;
        case '+' :
            //правило 3
            //читаем символ +
            if (read() != '+')
                error();
            else
                next();
            //читаем <expr>
            read_expr();
            break;
        default :
            error();
    }
}

void read_item() {
    switch (read()) {
        case 'a':
            //правило 4
            //читаем символ a
            if (read() != 'a')
                error();
            else
                next();
            break;
        case '(':
            //правило 5
            //читаем символ (
            if (read() != '(')
                error();
            else
                next();
            //читаем выражение
            read_expr();
            //читаем символ )
            if (read() != ')')
                error();
            else
                next();
            break;
        default:
            error();
    }
}

// КОНЕЦ ФУНКЦИЙ РАЗБОРА

int main() {
    cout << "Введите строку:\n";
    //читаем строку
    getline(cin, input);
    //устанавливаем текущий символ в начало строки
    pos = 0;

    try {
        //читаем выражение
        read_expr();

        //проверяем, что чтение дошло до конца
        if (read() != '$')
            error();

        //если не произошло ошибок, сообщаем, что строка корректна
        cout << "строка корректна";
    } catch (exception& ignored) {
        //если функцией error() было брошено исключение, сообщаем об ошибке и позиции.
        cout << "ошибка в позиции " << (pos + 1); // + 1, чтобы считать позиции с 1, а не с 0
    }

    return 0;
}
```

## ИДЗ 3
[Индивидуальное домашнее задание №3](https://github.com/iposov/site/raw/master/17fall/idz3.pdf)
