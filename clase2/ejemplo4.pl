
#!/usr/bin/perl -w
# -w activa el use warnings
use strict;
chomp(my $s=<STDIN>); #quita el salto de linea \n
my $n=<STDIN>;
print "El resultado es ",$s x $n,"\n"; # la x hara que se repita n veces
