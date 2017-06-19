# On-Site code sample 
Hello! Welcome to the On-Site code sample.  I've created a reverse polish notation(RPN) calculator.


## Thought Process
I started by checking the requirements and thinking about how I would like to use this calculator.  The examples on the gist seemed like an unpleasant way to input equations so I opted for a parsed option instead. I looked for potential traps in reverse polish notation as this is my first interaction with it and tried to keep any in mind. TDD from atomic interactions took me from the most basic functions to the full system.

## Architectural Choices
Before I read about how RPN worked, I thought I would use OOP and functional programming to split input by order of operations. I opted for OOP only and did my best to abstract the functions with no side-effects, but it ended up interfering with legibility.

## Things I'd do differently with more time
With more time I would attempt to make all the functions referentially transparent, as well as elaborate on the errors. Overall I'm satisfied with the result.

## How to use

Download the files and run:

```
ruby calculator-cli.rb
```

Assuming everything went well, you are now in the calculator. You can use standard reverse-polish notation for the input.

## examples:

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

## have a great day!