# On-Site code sample 
Hello! Welcome to the On-Site code sample.  I've created a reverse-polish notation calculator.

## How to use

Download the files and run:

```
ruby calculator-cli.rb
```

Assuming you everything went well, you are now in the calculator. You can use standard reverse-polish notation for the input.

examples:

standard addition
```
>2 2 +
4.0
```

feel free to try compound expressions
```
>5 1 2 + 4 * + 3 -
14.0
```

you can also use "c" to clear the calculator
```
>2 2 +
4.0
>c
calculator cleared
```

adding an expression without clearing will prepend the previous result to the equation
```
>2 2 +
4.0
>2 2 +
awaiting further operators
>+
8.0
```

too many operators will result in an error and clear the calculator
```
2 2 + +
error: too many operators or unknown character detected
```

...as will unknown characters
```
>2 2 x
error: too many operators or unknown character detected
```

to exit you can either enter "q" or CTRL-D
```
Welcome to Daniel Soetanto's reverse polish calculator!
q
exiting
```

to run the tests, use
```
ruby calculator.spec.rb
```