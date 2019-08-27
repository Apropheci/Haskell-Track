Variables & Functions
----
### Variables
----

We can store intermediate results by assigning them names. These names are called variables. When a program runs, each variable is substituted for the value to which it refers. For instance, consider the following calculation

```Haskell
Prelude> 3.141592653 * 5^2
78.539816325
```

That is the approximate area of a circle with radius 5, according to the formula {\displaystyle A=\pi r^{2}} A = \pi r^2. Of course, it is cumbersome to type in the digits of {\displaystyle \pi \approx 3.141592653} \pi \approx 3.141592653, or even to remember more than the first few. Programming helps us avoid mindless repetition and rote memorization by delegating these tasks to a machine. That way, our minds stay free to deal with more interesting ideas. For the present case, Haskell already includes a variable named pi that stores over a dozen digits of {\displaystyle \pi } \pi  for us. This allows for not just clearer code, but also greater precision.

```Haskell
Prelude> pi
3.141592653589793
Prelude> pi * 5^2
78.53981633974483
```

----

Functional programming offers a way to think in higher-level mathematical terms. By defining how variables relate to one another and leaving the compiler to translate these to the step-by-step instructions that the computer can process.

A variable in Haskell gets defined only once and cannot change. The variables in Haskell seem almost invariable, but they work like variables in mathematics. In a math classroom, you never see a variable change its value within a single problem. In precise terms, Haskell variables are immutable. They vary only based on the data we enter into a program.

A function takes an argument value (or parameter) and gives a result value. Defining functions in Haskell is like defining a variable, except that we take note of the function argument that we put on the left hand side. Functions can also take more than one arguement.

----
We define areaRect as a function that takes in two arguements (Integers) and then multiplies the arguements together.
```Haskell   
areaRect :: Int -> Int -> Int
areaRect l w = l * w
```

----
In this function, areaSquare, we take in one arguement and then call on the areaRect function. In the case of a square, either L or W works.
```Haskell
areaSquare :: Int -> Int
areaSquare x = areaRect x x
```

----
In this function, areaTriangle, we're taking in two arguements, and then calling on the areaRect function to multiply the arguements and then divide it by two to create the area formula for a triangle.
```Haskell
areaTriangle :: Int -> Int -> Float
areaTriangle b h = (/ 2) areaRect b h
```

----
In this function, double, we're taking in one arguement and multiplying it by 2. In the function quad we're simply combining two double functions to work on x.
```Haskell
double :: Int -> Int
double x = x * 2
quad x = (double . double) x
```
