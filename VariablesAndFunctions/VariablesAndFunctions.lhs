With this exercise you can see how we use the formula of a rectangle in haskell to come to a solution.
Write areaRect with two integers to pass as arguements and you'll see that it multiplies the two.
```Haskell
areaRect :: Int -> Int -> Int
areaRect l w = l * w
```

With this exercise you'll see how we use the previous function to use the area formula for a square.
Writing areaSquare and passing an integer for an arguement will call areaRect to multiply the number, giving you the area of a square.
```Haskell
areaSquare :: Int -> Int
areaSquare x = areaRect x x
```

With this exercise you'll see how we use the first function to also use the area formula for a triangle.
Writing areaTriangle with two integers to pass as arguements will call areaRect to mulitiply them and then divide the sum by 2.
```Haskell
areaTriangle :: Int -> Int -> Float
areaTriangle b h = (/ 2) areaRect b h
```

With this exercise you'll see how we can combine functions together to perform together.
Writing double and passing an integer as an arguement will multiply the number by 2.
Writing quad and passing an integer as an arguement will call double twice, multiplying the integer you passed twice.
```Haskell
double :: Int -> Int
double x = x * 2
quad x = (double . double) x
```

`main = putStrLn "Success"`
