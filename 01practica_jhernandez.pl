#!perl
use warnings;
use strict;
=pod

=head1 Description

Programa que copia de un arreglo solo los
numeros pares del uno al diez

=cut


my @b=();
my $i=0;
print "Los numeros pares son: \n";
for (1..10){
	if($_%2==0){
		push(@b,$_);
	}
}
print @b;
