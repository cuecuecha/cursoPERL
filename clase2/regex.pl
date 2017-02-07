#!/usr/bin/perl
use strict;
use 5.014;

my @tmp;
open(FCG,"<","copia") or die "No se puede\n";
while(<FCG>){
	chomp;
	if(/(.*)(\:(.*)){6}(.*)/){
		say "El usuario $1 tiene shell $3"; 
			## $1 grupos de captura
	}
}
close(FCG);
#if($home=/$user/) --> ve una coincidencia de expresion regular
