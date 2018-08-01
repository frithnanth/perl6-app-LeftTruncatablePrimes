## Left-truncatable Primes

A tiny program to compute left-truncatable primes.

## Example

`$ bin/lefttrunc.p6`

`$ bin/lefttrunc.p6 3`

`$ bin/lefttrunc.p6 -h`

## Description

Left-truncatable primes are prime numbers which have the property that when their leftmost digit is dropped,
the remaining digits form a prime number, and this is true for any number of digits one drops till the rightmost one.

Obviously the rightmost digit must be a prime number, so the choice is limited to 2, 3, 5, and 7.

lefttrunc.p6 works starting with a single one-digit prime number specified as a command line parameter,
defaulting to 7, and builds all the left-truncatable primes which end with that rightmost digit.
The program prints lines which start with a number, the digit count of the computed primes, followed by ':', and
the list of those prime numbers.

For example:

`23: 96686312646216567629137 57686312646216567629137 95918918997653319693967`

## Author

Fernando Santagata

## Copyright and license

The Artistic License 2.0
