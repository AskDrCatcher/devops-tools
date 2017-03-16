use Test::More;

use File::Basename qw(dirname);
use Cwd qw(abs_path);
use lib dirname(dirname abs_path $0) . '/lib';

BEGIN { use_ok('Statistics::Stats') };

use strict;
use warnings;

my %stats = Statistics::Stats->exported_subs();
ok( defined %stats );

# test avg is working
is ($stats{'avg'}->(1, 2, 3), 2, "avg (1,2,3) = 2");

# test mean (alias for avg) is working
is ($stats{'mean'}->(1, 2, 3), 2, "mean (1,2,3) = 2");

done_testing;