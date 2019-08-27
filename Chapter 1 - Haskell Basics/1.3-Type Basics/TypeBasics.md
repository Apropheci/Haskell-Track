# Type Basics
----
#### Using the interactive :type command
----

Let's explore how types work using GHCi. The type of any expression can be checked with :type (or shortened to :t) command. We can try this on many different things, such as boolean values, characters and strings.

```
Prelude> :type True
True :: Bool

Prelude> :type False
False :: Bool
```

The symbol ::, which will appear in a couple other places, can be read as simply "is of type", and indicates a type signature.

:type reveals that truth values in Haskell are of type Bool, as illustrated above for the two possible values, True and False, as well as for a sample expression that will evaluate to one of them. Note that boolean values are not just for value comparisons. Bool captures the semantics of a yes/no answer, so it can represent any information of such kind – say, whether a name was found in a spreadsheet, or whether a user has toggled an on/off option.

Now let's try :t on something new. Literal characters are entered by enclosing them with single quotation marks. For instance, this is the single letter H:

```
Prelude> :t 'H'
'H' :: Char
```

So, literal character values have type Char (short for "character"). Now, single quotation marks only work for individual characters, so if we need to enter longer text – that is, a string of characters – we use double quotation marks instead:

```
Prelude> :t "Hello World"
"Hello World" :: [Char]
```

Why did we get Char again? The difference is the square brackets. `[Char]` means a number of characters chained together, forming a list of characters. Haskell considers all Strings to be lists of characters. Lists in general are important entities in Haskell, and we will cover them in more detail in a little while.
