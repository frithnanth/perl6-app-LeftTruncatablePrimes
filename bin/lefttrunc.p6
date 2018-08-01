#!/usr/bin/env perl6

#| Compute left-truncatable prime numbers
sub MAIN( #|{ single-digit prime numbers: 2, 3, 5, 7 } $start-with where *.is-prime = 7) {
  my @left-truncatables = [$start-with],;
  say "1: $start-with";
  my $max = 0;
  loop {
    for |@left-truncatables[$max] -> $sofar {
      for 1..9 -> $digit {
        my $test = $digit * 10 ** ($max + 1) + $sofar;
        if $test.is-prime {
          @left-truncatables[$max + 1].push: $test;
        }
      }
    }
    $max++;
    exit unless @left-truncatables[$max].defined;
    put "{$max+1}: @left-truncatables[$max]";
  }
}
