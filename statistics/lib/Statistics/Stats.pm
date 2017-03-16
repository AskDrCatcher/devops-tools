package Statistics::Stats;

# Stats -- provide general statistics functions.
# 
# License - Apache Version 2.0
# Copyright (c) 2017 Arun S Kumar <arunsk.tec@gmail.com>
#

use strict;
use warnings;

use Exporter qw(import);
our @EXPORT_OK = qw(exported_subs);

# collection of statistics functions
my %stats = map { my $item = pop @$_; map { $_, $item } @$_ } 

# expects input to be space separated list of tokens
[qw(mean avg) => sub {
			my $sum = 0;
			$sum += $_ foreach @_;
			return $sum ? $sum/ @_ : $sum;
		}]
;

sub exported_subs {
	return %stats;
}

1;