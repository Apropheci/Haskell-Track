# Truth Values
----
#### Equality and other comparisons
----

Comparing values to see if they are equal is also useful in programming. In Haskell, such tests look just like an equation. Since the equals sign is already used for defining things, Haskell uses a double equals sign, `==` instead.



This will return true, as five is equal to five (exerciseOne in lhs)
`2 + 3 == 5`



But if the equation is not true it will return false (exerciseTwo in lhs)
`2 + 7 == 5`


We can also use functions to test this on as well. We define a function f that takes in an integer and adds three to it. So if we pass 2 into the function and ask if it will be equal to 5, it will return true.
```Haskell
f :: Int -> Int
f x = x + 3
f 2 == 5
```

We can also compare two numerical values. Haskell provides a number of tests including: `<` (less than), `>` (greater than), `<=` (less than or equal to) and `>=` (greater than or equal to). These tests work comparably to `==` (equal to). For example, we could use `<` alongside the area function from the previous module to see whether a circle of a certain radius would have an area smaller than some value.
```Haskell
area r = pi * r ^ 2
area 5 < 50
False
```



----
#### Boolean values
----
Expanding on what we covered in the beginning we'll go over Boolean values now. What is actually going on when GHCi determines whether these arithmetical propositions are true or false? Consider a different but related issue. If we enter an arithmetical expression in GHCi the expression gets evaluated, and the resulting numerical value is displayed on the screen:
```Haskell
> 2 + 2
> 4
```

If we replace the arithmetical expression with an equality comparison, something similar seems to happen:
```Haskell
2 == 2
True
```

Whereas the "4" returned earlier is a number which represents some kind of count, quantity, etc., "True" is a value that stands for the truth of a proposition. Such values are called truth values, or boolean values. Naturally, only two possible boolean values exist: `True` and `False`.



----
#### Boolean operations
----
Haskell provides three basic functions for further manipulation of truth values as in logic propositions.
`&&` is the logical and, while `||` is the logical or
```Haskell
True && True == True
True && False == False
False && True == False
False && False == False

True || True == True
True || False == True
False || True == True
False || False == False
```
`not` performs the negation of a boolean value; that is, it converts True to False and vice-versa.
```Haskell
not ( 5 * 2 == 10)
false
```


----
#### Guards
---
Haskell programs often use boolean operators in convenient and abbreviated syntax. When the same logic is written in alternative styles, we call this syntactic sugar because it sweetens the code from the human perspective. We'll start with guards, a feature that relies on boolean values and allows us to write simple but powerful functions.

Let's implement the absolute value function. The absolute value of a real number is the number with its sign discarded; so if the number is negative (that is, smaller than zero) the sign is inverted; otherwise it remains unchanged. Here, the actual expression to be used for calculating `|x|` depends on a set of propositions made about `x`. If `x >=` is true, then we use the first expression, but if `x < 0` is the case, then we use the second expression instead. To express this decision process in Haskell using guards, the implementation could look like this:
```Haskell
abs :: Int -> Int
abs x
  | x < 0 = -x
  | otherwise x = x
```
There is no syntactical magic behind otherwise. It is defined alongside the default variables and functions of Haskell as simply `otherwise = True`

`where` clauses work well along with guards. For instance, consider a function which computes the number of (real) solutions for a quadratic equation, ax^2 + bx + c = 0
```Haskell
numOfRealSolutions a b c
    | disc > 0  = 2
    | disc == 0 = 1
    | otherwise = 0
        where
        disc = b^2 - 4*a*c
```
The `where` definition is within the scope of all of the guards, sparing us from repeating the expression for `disc`.
