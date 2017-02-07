#!/usr/bin/perl
use strict;
use 5.014;

my @tmp;
open(FCG,"<","copia") or die "No se puede\n";
while(<FCG>){
	chomp;
	if($_=/:.*:/){
		say $_;
		say $';#imprime despues de la coincidencia
		say $&;#imprime la coincidencia
		say $`;#imprime antes de la coincidencia
		say '';
	}
}
close(FCG);
