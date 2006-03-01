# This -*-perl-*- script writes the Makefile for installing this distribution.
#
# See "perldoc perlmodinstall" or "perldoc ExtUtils::MakeMaker" for
# info on how to control how the installation goes.
#

require 5.004;
use strict;
use ExtUtils::MakeMaker;

WriteMakefile(
   'NAME'       => 'Games::Alak',
   'VERSION_FROM' => 'lib/Games/Alak.pm', # finds $VERSION
   'dist'        => { COMPRESS => 'gzip -6f', SUFFIX => 'gz', },
   'PREREQ_PM'    => {  
                         'Term::ReadLine' => 0, # any version, I guess.
                     },
);
