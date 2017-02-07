#!/usr/bin/perl
use strict;
use 5.014;
=pod
=head1 Description

Programa que imprime un valor del arreglo a traves de un hash

otro=>\@d  es igual a otro=>0xffcd

=cut

my @d=qw(1 2 3 4 5 6); #qw es lo mismo que ("1","2","3"), evita que pongas lo elementos en comillas
my %shell=(
	"user"=>"shell",
	"fcg"=>"/bin/bash",
	"apt"=>"/bin/nologin",
	"otro",\@d
);
print $shell{"otro"}->[2],"\n"; ##accede al valor de la llave otro con "->" y este a su vez accede a la posicion
				# 2
print $shell{"otro"}[2]; #es la direccion de memoria que estoy diciendo que accede a la posicion 2
print ${$shell{"otro"}}[2]; #las llaves internas es una direccion de memoria que con 
				# $ estoy diciendo que es un escalar				
