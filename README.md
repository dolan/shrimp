#Rack of Shrimp

This is a silly little rack application that is used as a way to learn
rack and middleware. It's based on the example application that comes
with Rack called "Lobster"

## Requires ruby 2.2+

## Description
Currently if you `rackup`, it will serve an http application on

```
http://localhost:9292
```

Try curling it or loading it in a browser and you will see that an ASCII
lobster is drawn, followed by a very poorly illustrated shrimp.

The shrimp is implemented in the middleware

## Exercise for the learner:

### There is a bug

> There is a bug in this code that was deliberately put here.  Fix that
> first.

The shrimp should properly be BEFORE the lobster as it's an appetizer.
Modify the Shrimp middleware so that it prints out before the lobster.

* DONT FORGET THE TESTS!

Use the internet as a reference. Google whatever you like.



