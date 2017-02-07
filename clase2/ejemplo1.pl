#!perl
use warnings;
use strict;
use v5.10;
my %h=("uno",1,
	"dos",2,
	"tres",3,
	"ene","n",
	"llave","valor",
	"1","uno",
	0,"cero",
);
#say $h{dos}; #
#say $h{"dos"};#se puede o no poner comillas
#say $h{0};
#say $h{"0"};
#for(sort keys %h){say $_;} #itera dentro del hash, sin orden, es necesario agregar un sort, ordena segun ASCII
			    #llaves
#for(sort values %h){say $_;}#obtiene todos los valores
#for(sort keys %h){say $_,"=>",$h{$_};} #imprime la llave y su valor $h{$_} accede al valor de la llave

#for my $key (sort keys %h){ lo mismo que $_ pero utiliza una variable para que se guarde cada valor
#	say $key,"->",$h{$key};
#}
