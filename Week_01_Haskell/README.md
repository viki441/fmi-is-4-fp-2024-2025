# Основни моменти при Haskell

Haskell e строго типизиран функционален език, позволяващ писане на кратък и изразителен код.

## Примитивни типове

- Bool
- Int, Integer
- Double
- Char
- [t] е тип за списък от елементи от тип t

## Дефиниции 

### Нелитерални константи
```haskell
var_name :: Var_type
two = expression
```

### Функции
```haskell
func_name :: Type1 -> ... -> TypeN -> ResultType
func_name par1 ... parN = expression
```

### Guard конструкции
```haskell
func_name :: Type1 -> ... -> TypeN -> ResultType
func_name par1 ... parN
    | cond1          = expression1
    | cond2          = expression2
    ...
    | otherwise      = expression
```

### If-else конструкция
```haskell
func_name :: Type1 -> ... -> TypeN -> ResultType
func_name par1 ... parN
    = if cond1 then expression1
    else if cond2 then expression2
    else if ... 
    else expression
```

### Where клаузи

### N-торки(Tuples)
type Something = (Type1, Type2, ..., TypeM)
fst, snd за наредени двойки

PATTERN MATCHING!!!

### Списъци в Haskell
[] - празен списък, елемент е на всеки тип от вида [t] за произволен списък Т
```haskell
[n .. m] -- = [n, n+1, ..., m]
[1, 3 .. 10] -- = [1, 3, 5, 7, 9]
```

Основни функции за работа със списъци:
- : - добавя елемент в начално на списък, t -> [t] -> [t]
- ++ - слепване на списъци, [t] -> [t] -> [t]
- concat - слепване на списък от списъци, [[t]] -> [t]
- length - дължина на списък, [t] -> Int
- head - връща главата на списъка, [t] -> t
- tail - връща опашката на списъка, [t] -> [t]

### Конструиране на списъци
```haskell
3:2:1:[] == [3,2,1] -- True
```
Образец на списък:
- []
- (x:xs)

## Рекурсия по списъци
Примитивна рекурсия
```haskell
sum :: [Int] -> Int
sum []     = 0
sum (x:xs) = x + sum xs -- Приоритетът на : е нисък, затова са необходими скобите
```

# Задачи за упражнение

1) Да се напише функция, която по подадени дробни числа x и y, както и числа r и R, проверява дали точката с координати (x, y) лежи се намира във венеца между кръговете с радиуси съответно r и R(приемаме, че r < R).
```haskell
isWithinCircularBand :: (Double, Double) -> Double -> Double -> Bool
```

2) Да се напише функция, която проверява дали цифрите на подадено число образуват растяща редица.
```haskell
isIncreasingDigits :: Int -> Bool
```

3) Да се напише функция, която приема списък от цели числа и връща тяхното произведение.
```haskell
prod :: [Int] -> Int
```

4) Числа на Фибоначи
    - да се напише функция, която връща n-тото число на Фибоначи
    - да се напише такава итеративна функция.
```haskell
nthFib :: Int -> Int
```

5) Да се напише функция, която по подаден списък от цели числа и цяло число връща индексът на първото срещане на подаденото число в списъка или -1, ако го няма.
```haskell
indexOf :: Int -> [Int] -> Int
```

6) Да се напише функция, която обръща подаден символен низ.
```haskell
reverseString :: String -> String -- :: [Char] -> [Char]
```

7) Да се напише функция, която обработва подаден символен низ по следния начин:
малките букви ги прави големи, големите малки, всички останали символи ги заменя с ' '.
```haskell
transformString :: String -> String -- :: [Char] -> [Char]
```