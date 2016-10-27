# Mike McQuade
# copy.pl

use strict;
use warnings;
use File::Copy;

# Check to make sure that there is an argument given in the command-line
my $num_args = $#ARGV + 1;
if ($num_args != 1) {
    print "Usage: copy2.pl filename\n";
    exit;
}

# Set filename variable equal to the value received from the command-line
my $filename = $ARGV[0];

# Search for the index of the extension
my $index = index($filename,'.');

# Save a copy of the input file
copy($filename,substr($filename,0,$index)."-copy".substr($filename,$index)) or die "Copy failed: $!";