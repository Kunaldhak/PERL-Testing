  use strict;
  use warnings;

    my @strs = qw(potatoes lemons apricots apples bananas ostriches flamingoes);
    my @short_strs = grep { length $_ < 8 } @strs;
    for my $str (@short_strs) {
        print "$str\n";
    }