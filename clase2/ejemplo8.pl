#!perl
use strict;

#my $n=<STDIN>;
#for(1..10){
#	print $_*$n,"\n";
#}

#funcion map
my $n=<STDIN>;
map {print $_ * $n,"\n";}(1..10);
#funcion map puede recibir un block/expr list(ej 1..10)
