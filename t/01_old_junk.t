
#Time-stamp: "2004-12-29 18:51:38 AST"

BEGIN { $| = 1; print "1..1\n"; }
END {print "not ok 1\n" unless $loaded;}
use Games::Alak;
$loaded = 1;
print "ok 1\n";
