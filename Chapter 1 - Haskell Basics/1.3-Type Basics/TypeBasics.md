# Type Basics
----
### Using the interactive :type command
----

Let's explore how types work using GHCi. The type of any expression can be checked with :type (or shortened to :t) command. We can try this on many different things, such as boolean values, characters and strings.

```Haskell
Prelude> :type True
True :: Bool

Prelude> :type False
False :: Bool
```

The symbol `::`, which will appear in a couple other places, can be read as simply "is of type", and indicates a type signature.

`:type` reveals that truth values in Haskell are of type Bool, as illustrated above for the two possible values, `True` and `False`, as well as for a sample expression that will evaluate to one of them. Note that boolean values are not just for value comparisons. `Bool` captures the semantics of a yes/no answer, so it can represent any information of such kind – say, whether a name was found in a spreadsheet, or whether a user has toggled an on/off option.

----
Now let's try :t on something new. Literal characters are entered by enclosing them with single quotation marks. For instance, this is the single letter `H`:

```Haskell
Prelude> :t 'H'
'H' :: Char
```

So, literal character values have type Char (short for "character"). Now, single quotation marks only work for individual characters, so if we need to enter longer text – that is, a string of characters – we use double quotation marks instead:

```Haskell
Prelude> :t "Hello World"
"Hello World" :: [Char]
```

Why did we get Char again? The difference is the square brackets. `[Char]` means a number of characters chained together, forming a list of characters. Haskell considers all Strings to be lists of characters. Lists in general are important entities in Haskell, and we will cover them in more detail in a little while.

----
### Functional types
----

So far, we have seen how values (`strings`, `booleans`, `characters`, etc.) have types and how these types help us to categorize and describe them. Now, the big twist that makes Haskell's type system truly powerful: Functions have types as well. Let's look at some examples to see how that works.

We can negate boolean values with not (e.g. not True evaluates to False and vice-versa). To figure out the type of a function, we consider two things: the type of values it takes as its input and the type of value it returns. In this example, things are easy. not takes a Bool (the Bool to be negated), and returns a Bool (the negated Bool). The notation for writing that down is: `not :: Bool -> Bool`. You can use `:t` or `:type` to find the types for functions such as `chr` and `ord`.

What would be the type of a function that takes more than one argument? Let's look at the following example

```Haskell
xor p q = (p || q) && not (p && q)
```

1. Write down the types of the arguments. In this case, the use of (||) and (&&) gives away that p and q have to be of type Bool.

```Haskell
Bool                   Bool
^^ p is a Bool         ^^ q is a Bool as well
```

2. Fill in the gaps with `->`:

`Bool -> Bool`

3. Add in the result type and a final ->. In our case, we're just doing some basic boolean operations so the result remains a Bool.

```Haskell
Bool -> Bool -> Bool
                 ^^ We're returning a Bool
             ^^ This is the extra -> that got added in 
```

The final signature, then, is:

```Haskell
xor :: Bool -> Bool -> Bool
```
