# Variables & Functions

### Variables

We can store data by assigning it names. These names are called variables. When a program runs, each variable is substituted for the value to which it refers. For instance, consider the following calculation:

```Haskell
Prelude> 3.141592653 * 5^2
78.539816325
```

That is the approximate area of a circle with a radius of 5, according to the formula `A = pi r^2`. Of course, it is cumbersome to type in the digits of pi, or even to remember more than the first few. Programming helps us avoid mindless repetition and rote memorization by delegating these tasks to a machine. That way, our minds stay free to deal with more interesting ideas. For the present case, Haskell already includes a variable named pi that stores over a dozen digits for us. This allows for not just clearer code, but also greater precision.

```Haskell
Prelude> pi
3.141592653589793
Prelude> pi * 5^2
78.53981633974483
```

A variable in Haskell gets defined only once and cannot change. The variables in Haskell seem almost invariable, but they work like variables in mathematics. In a math classroom, you never see a variable change its value within a single problem. In precise terms, Haskell variables are immutable. They vary only based on the data we enter into a program.

### Functions

Functional programming offers a way to think in higher-level mathematical terms. By defining how variables relate to one another and leaving the compiler to translate these to the step-by-step instructions that the computer can process.

A function takes an argument value (or parameter) and gives a single, result value. Defining functions in Haskell is like defining a variable except that we take note of the function argument that we put on the left hand side of the equal sign, right of the name. Functions can also take more than one arguement. The left side of each arrow is a function's input and the last value after the arrow is the function's output.

----
We define areaRect as a function that takes in two arguements (in this case, Integers) then multiplies the arguements together.
```Haskell   
areaRect :: Int -> Int -> Int
areaRect l w = l * w
```

### Combining Functions

Of course, you can use functions that you have already defined to define new functions, just like you can use the predefined functions like addition `+` or multiplication `*` (operators are defined as functions in Haskell). For example, to calculate the area of a square, we can reuse our function that calculates the area of a rectangle:

```Haskell
areaSquare :: Int -> Int
areaSquare x = areaRect x x
```

In this function, `areaSquare`, we take in one arguement and then call on the areaRect function. In the case of a square, both of its sides have the same length so either `L` or `W` works here.

----
In this function, `areaTriangle`, we're taking in two arguements, and then calling on the areaRect function to multiply the arguements and then divide it by two to create the area formula for a triangle. The output is a float because we need to be divisible by two because `Integeral` numbers have no decimal values.
```Haskell
areaTriangle :: Int -> Int -> Float
areaTriangle b h = (/ 2) areaRect b h
```

Also, we can rewrite the function as:
```Haskell
areaTriangle :: Int -> Int -> Float
areaTriangle b h = (areaRect b h) / 2
```

### Function Composition

In the function, `double`, we're taking in one arguement and multiplying it by `2`. In the function quad we're simply combining two `double` functions to work on `x`.
```Haskell
double :: Int -> Int
double x = x * 2
quad :: Int -> Int
quad x = (double . double) x
```

### Where Clauses

When defining a function, we sometimes want to define intermediate results that are local to the function. For instance, consider the Heron's formula `a b c = sqrt (s * (s - a) * (s - b) * (s - c))` for calculating the area of a triangle with sides `a`, `b`, and `c`:

```Haskell
heron a b c = sqrt (s * (s - a) * (s - b) * (s - c))
s = (a + b + c) / 2  -- a, b, and c are not defined here
```

Because the variables `a`, `b`, `c` are only available in the right-hand side of the function `areaTriangleHeron`, but the definition of `s` as written here is not part of the right-hand side of `areaTriangleHeron`. To make it part of the right-hand side, we use the `where` keyword:

```Haskell
areaTriangleHeron a b c = result           -- use Heron's formula
    where
    result = sqrt (s * (s - a) * (s - b) * (s - c))
    s      = (a + b + c) / 2
```

Note that both the `where` and the local definitions are indented by 4 spaces, to distinguish them from subsequent definitions.

### Scope

If you look closely at the example below, you'll notice that we have used the variable names `a`, `b`, `c` twice, once for each of the two area functions. How does that work?

```Haskell
areaTriangleTrig  a b c = c * height / 2   -- use trigonometry
    where
    cosa   = (b ^ 2 + c ^ 2 - a ^ 2) / (2 * b * c)
    sina   = sqrt (1 - cosa ^ 2)
    height = b * sina
    
    
areaTriangleHeron a b c = result           -- use Heron's formula
    where
    result = sqrt (s * (s - a) * (s - b) * (s - c))
    s      = (a + b + c) / 2
```

Consider the following GHCi sequence:

```Haskell
Prelude> let r = 0
Prelude> let area r = pi * r ^ 2
Prelude> area 5
78.53981633974483
```
It would have been an unpleasant surprise to return `0` for the area because of the earlier `let r = 0` definition getting in the way. That does not happen because when you defined `r` the second time you are talking about a different `r`. This may seem confusing, but consider how many people have the name John, and yet for any context with only one John, we can talk about "John" with no confusion. Programming has a notion similar to context, called scope.

We will not explain the technicalities behind scope right now. Just keep in mind that the value of a parameter is strictly what you pass in when you call the function, regardless of what the variable was called in the function's definition. That said, appropriately unique names for variables do make the code easier for human readers to understand.
