# Functor, Applicative, Monad - Simplest content

> Inspired by https://www.adit.io/posts/2013-04-17-functors,_applicatives,_and_monads_in_pictures.html  this article, strongly recommended read

First of all, let's have a common agreement, when I talk about value in a context, you can imagine a value is wrapped in a box. same to then 'function in a context'.

## Functor

**Question**: How can we apply a function to a value in a context (like `Just 3` )

**Answer**: **Use fmap!** 

```haskell
fmap (+2) Just 4
-- output: Just 6
```

Just image that: fmap unwrap the value `4`  from the context and apply the `(+2)`  to the value, finally wrap result `6` back to the context.

`fmap` is defined in the functor. Any functor defines the fmap work mechanisms. `Maybe`  is a functor, take a look at how  `Maybe` defines fmap:

```haskell
instance Functor Maybe where
    fmap func (Just val) = Just (func val)
    fmap func Nothing = Nothing
```

You can apply a function to a function

```haskell
let foo = fmap (+3) (+2)
-- foo 10
-- output 15
```

Another thing need to know is `<$>` is the infix version of `fmap`, we can right like

```haskell
(+2) <$> Just 4
-- output: Just 6
```

One last thing, the function can have two arguments

```haskell
(+) <$> Just 4
-- output: Just (+4)
```



## Applicative

**Question**: How can we apply a function to a value in a context (like `Just 3` ) when our function is also in a context (like `Just (+2)`)

**Answer**: **Use <*>!** 

```haskell
Just (+2) <*> (Just 1)
-- output: Just 3
```

`<*>` is defined in the Applicative, `Maybe` is also an Applicative, let's see how it implements the `<*>` 

```haskell
instance Applicative Maybe where
		pure = Just

    Just f  <*> m       = fmap f m -- take a look at this!
    Nothing <*> _m      = Nothing
```

## Monad

No need to understand the meaning of Monad in math, just take it as a common typeclass.

**Question**: How can we apply a function to a value in a context (like `Just 3` ) when our function returns a value in a context (like `double x = Just x `)

**Answer**: **use >>=** (pronounced bind)

```haskell
-- suppose we have a function return a value in a context
half x = if even x
           then Just (x `div` 2)
           else Nothing
           
-- We can use bind to apply half to 3
Just 3 >>= half
```

`>>=** ` is defined in the Monad, `Maybe` is also a Monad 

```haskell
instance Monad Maybe where
    Nothing >>= func = Nothing
    Just val >>= func  = func val
```

We can call half in the chain. Because` >>=`  returns a value in a context that can directly apply to the next `half` function. it will be more difficult when using Applicative.

```haskell
Just 3 >>= half >>= half
```

Syntax sugar `do`

```haskell
--origin write :
getLine >>= readFile >>= putStrLn -- all of these three functions return a value in a context

-- Write in do
foo = do
    filename <- getLine -- just temporarily store the return value of getLine
    contents <- readFile filename
    putStrLn contents
```



And let is all !





