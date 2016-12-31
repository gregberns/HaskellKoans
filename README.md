# Haskell Koans

Koans to help learn Haskell.

**NOTICE** 
This repository is currently under construction. Do not use until this notice is removed.

## What are Koans?

> Essentially, you clone a github repository that has 200 or so failing test cases. Then, you work your way through the test cases, writing functions and filling in the blanks, getting the tests to pass one by one. The first few tests are very basic and assume no prior knowledge of the language, and then they build on each other, moving to more advanced topics.
> 
> http://www.lauradhamilton.com/learn-a-new-programming-language-today-with-koans

## Getting Started

### Pre-requisites

The Haskell platform and Haskell Stack need to be installed, 

Use the two links below to get the Haskell platform and Haskell Stack installed.

https://www.haskell.org/platform/

https://docs.haskellstack.org/en/stable/README/

Or if on Mac, use Homebrew to install:

```
brew install haskell
brew install haskell-stack
```

### Koans

Execute the following commands in a terminal: 

```
git clone https://github.com/gregberns/HaskellKoans
cd HaskellKoans

stack build
stack test
```

## Contributing

* Add more koans to existing topics
* Add new topics, such as:
    * Multi-parameter Types
    * Recursion
    * Records
    * Type Signatures
    * Lambdas
    * ADT (Algebraic Data Types)
* Make sure "Getting Started" works for new environments
* See if the message returned when \__ is good enough
* Add more Koans, then need to go and add \__


