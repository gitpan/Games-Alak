# This -*- perl -*- script writes the Makefile for Games::Alak
# Time-stamp: "2000-07-08 22:49:53 MDT"
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
require 5.004;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
   'NAME'       => 'Games::Alak',
   'VERSION_FROM' => 'Alak.pm', # finds $VERSION
   'dist'        => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
   'PREREQ_PM'    => {  
                         'Term::ReadLine' => 0, # any version, I guess.
                     },
);

package MY;

sub libscan { # Determine things that should *not* be installed
    my($self, $path) = @_;
    return '' if $path =~ m/~/;
    $path;
}

__END__
