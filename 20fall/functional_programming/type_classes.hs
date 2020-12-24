-- Классы типов

-- Нам нужны такие классы типов, если мы хотим написать функцию,
-- которая работает для разных типов. Например, функция show умеет
-- превращать в String значения почти любых типов.
s1 = show 42
s2 = show True
s3 = show [1, 2, 3]

-- во всех случаях получаются строки. Т.е. show работает и для
-- Int, и для Bool, и для [Int], и ...

-- у нее тип a -> String, но в начале есть условие
-- Show a, т.е. тип a не любой, а такой, для которого описано,
-- как его превращать в строку.
-- Целиком тип show выглядит так: Show a => a -> String

-- Как сделать так, чтобы наш собственный тип тоже можно было
-- подставлять в show

data Point = Point Int Int -- точка на плоскости, целые координаты

-- Класс типов Show это такие типы, для которых работает ф-ия
-- show, ниже мы говорим, что класс Point тоже должен принадлежать
-- классу типов Show, и указываем, как именно реализовывать ф-ию

instance Show Point where
    --show :: Point -> String
    show (Point x y) = "(" ++ (show x) ++ ", " ++ (show y) ++ ")"
    
-- если написать data Point = Point Int Int deriving Show,
-- то Haskell сам придумает, как делать ф-ию show. Это работает для
-- класса Show и для нескольких других классов

-- Cвой заведем класс. Это будет класс "Переворачиваемых" типов. Типы,
-- для которых есть метод rev. Назовем класс Rev (класс с большой
-- буквы)

-- говорим, что тип a будет переворачиваемый, если для него есть
-- функция rev
class Rev a where
    rev :: a -> a
    
-- пример, хочу чтобы числа и строки можно было переворачивать
-- rev 42 = 24, rev "abc" = "cba"
    
-- как переворачивать числа
instance Rev Int where
    rev n = toNumber (reverse (digits n)) where
               -- digits превратить число в список цифр
               -- digits 423 = [3, 2, 4]
               digits 0 = []
               digits n = (mod n 10) : (digits (div n 10))
               -- toNumber [1 2 3] = 321
               toNumber [] = 0
               toNumber (h:t) = h + 10 * (toNumber t)
               
instance Rev Char where
    -- rev (h:t) = (rev t) ++ [h]
    rev c = c -- при переворачивании символа ничего не просходит


-- говорим, что если тип a можно перевернуть, то список из 
-- элементов типа a тоже можно перевернуть
instance Rev a => Rev [a] where
    rev s = reverse (map rev s)
    -- перевернули каждый элемент списка, а потом первернули весь
    -- список
    
-- rev (42::Int) = 24
-- rev "xyz" = "zyx"
-- rev ["word1", "word2", "word3"] = ["3drow","2drow","1drow"]  
-- rev [123::Int, 345, 766] = [667,543,321]

