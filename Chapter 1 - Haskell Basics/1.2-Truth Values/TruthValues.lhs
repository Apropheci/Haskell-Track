Equality and other comparisons

> exerciseOne = 2 + 3 == 5
> exerciseTwo = 2 + 7 == 5

> f :: Int -> Int
> f x = x + 3

> lessThan :: Int -> Bool
> lessThan x = x < 5

> greaterThan :: Int -> Bool
> greaterThan x = x > 5

> lessThanOr :: Int -> Bool
> lessThanOr x = x <= 5

> greaterThanOr :: Int -> Bool
> greaterThanOr x = x >= 5

> r = 0
> area r = pi * r ^ 2


Guards

> abs :: Int -> Int
> abs x
>   | x < 0 = -x
>   | otherwise x = x

> numOfRealSolutions a b c
>    | disc > 0  = 2
>    | disc == 0 = 1
>    | otherwise = 0
>        where
>        disc = b^2 - 4*a*c

> main = putStrLn "Success"
