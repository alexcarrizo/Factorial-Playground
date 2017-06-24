# Factorial Playground

Swift playground for calculating the factorial of an integer n by iteration or recursion, with execution time.

## Factorial Definition

"In mathematics, the factorial of a non-negative integer n, denoted by n!, is the product of all positive integers less than or equal to n. For example,

5! = 5 x 4 x 3 x 2 x 1 = 120." - from [https://en.wikipedia.org/wiki/Factorial](https://en.wikipedia.org/wiki/Factorial)

## How to use

Set n to the integer of your choice, then set the algorithm type

```Swift
let n = 5
let solveBy: AlgorithmType = .recursion
```

[Click here to view source](https://github.com/alexcarrizo/Factorial-Playground/blob/master/Factorial.playground/Contents.swift)

## Playground Notes
*  By definition, 0! = 1
*  Handles negative integers, just know that -20! is actually -(20!)
*  Works with integers from -20 to 20

## My results

Testing recursion
```
20! = 2432902008176640000

Time elapsed for getFactorialByRecursion(20): 810.027122497559 ns
```
Testing iteration
```
20! = 2432902008176640000

Time elapsed for getFactorialByIteration(20): 833.988189697266 ns
```
After repeated testing, it appears that recursion is slightly faster than iteration when calculating factorials using these methods.


