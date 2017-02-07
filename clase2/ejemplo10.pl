#!perl
use warnings;

@lines=`perldoc -u -f atan2`;
foreach (@lines){
s/\w<([^>]+)>/\U$1/g;
#s -> sustituir     g->agregue todo	U->pasa a mayusculas $1 --> concidencia

#s/\w<([^>]+)>/\u\L$1/g; #pasa la primera a Mayusculas

print;
}
