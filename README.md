# Lockers Riddle

* If you would like to try solving the riddle for yourself you can find it in
this [Youtube video](https://youtu.be/c18GjbnZXMw).

## Solution

* If you create a `Room` object with an array of 100 `Locker` objects,
`#get_open_locker_numbers` will return the array `[1, 4, 9, 16, 25, 36, 49, 64, 81, 100]`.
These are all the square numbers up to and including 100 -- problem solved!

* Furthermore, if you create a `Room` object with an array of ***any number*** of `Locker` objects,
(both larger and smaller than 100 work) running `#get_open_locker_numbers`
will return an array containing all square numbers up to and including the 
number of `Locker` objects.

* A nice algorithm for finding square numbers up to and including ***(n)*** hidden
in a riddle!