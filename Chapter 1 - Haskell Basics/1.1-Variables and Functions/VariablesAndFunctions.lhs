Functions

> areaRect :: Int -> Int -> Int
> areaRect l w = l * w

> areaSquare :: Int -> Int
> areaSquare x = areaRect x x

> areaTriangle :: Int -> Int -> Float
> areaTriangle b h = (/ 2) areaRect b h

> double :: Int -> Int
> double x = x * 2
> quad x = (double . double) x


Combining Functions

> areaRect l w = l * w
> areaSquare s = areaRect s s


Where Clauses

> areaTriangleHeron a b c = result
>     where
>     result = sqrt (s * (s - a) * (s - b) * (s - c))
>     s      = (a + b + c) / 2


Scope

> let r = 0
> let area r = pi * r ^ 2


> main = putStrLn "Success"
