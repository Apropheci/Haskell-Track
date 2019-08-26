This is a simple exercise to show you how we can use Booleans to determine if something is true or not.

exerciseOne is an example of how we can use math to add two numbers, and then using truth values to determine if it is equal to
some value. So here we're doing 2 + 3 which will add up to 5. Then it will take 5 and determine if it is the same value as 5.
Since this is true, the output will be true. ( == is used to verify if 2 + 3 is the same type and value as 5 )


> exerciseOne = 2 + 3 == 5



exerciseTwo is the same example as exerciseOne but we're using an example when the output returns false. So here we're doing 2 + 7
which will add up to 9. Then it will take 9 and determine if it is the same value as 5. Since this is false, it will return
false. ( == is used to verify if 2 + 7 is the same type and value as 5 )


> exerciseTwo = 2 + 7 == 5



In this exercise we're going to check out how we can use functions to test values as well. We have a function named f that takes an integer
and then adds three to the integer. You can call the function and see if it is equivalent to something, i.e f 3 == 5.


> f :: Int -> Int
> f x = x + 3

> main = putStrLn "Success"