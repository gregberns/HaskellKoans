G - Currying/Partial Application
H - Pattern matching - Guards



$ = |> = Pizza Right


 - Multi-parameter Types
Recursion
Records


Type Signatures
Lambdas
ADT (Algebraic Data Types)





recursion reverse
(= __ (string/reverse "hello"))





signum x =
    if x < 0
      then -1
      else if x > 0
        then 1
        else 0

4.5  Lexical Scoping and Nested Forms

Let Expressions.

https://www.haskell.org/tutorial/patterns.html

Haskell's let expressions are useful whenever a nested set of bindings is required. As a simple example, consider: 

let y   = a*b
    f x = (x+y)/y
in f c + f d

The set of bindings created by a let expression is mutually recursive, and pattern bindings are treated as lazy patterns (i.e. they carry an implicit ~). The only kind of declarations permitted are type signatures, function bindings, and pattern bindings.
Where Clauses.

Sometimes it is convenient to scope bindings over several guarded equations, which requires a where clause: 

f x y  |  y>z           =  ...
       |  y==z          =  ...
       |  y<z           =  ...
     where z = x*x

Note that this cannot be done with a let expression, which only scopes over the expression which it encloses. A where clause is only allowed at the top level of a set of equations or case expression. The same properties and constraints on bindings in let expressions apply to those in where clauses.
These two forms of nested scope seem very similar, but remember that a let expression is an expression, whereas a where clause is not---it is part of the syntax of function declarations and case expressions.