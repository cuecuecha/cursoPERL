#!perl
$|++;
use warnings;
use strict;

use Time::HiRes("nanosleep");
my @becario=qw/
		Arturo
		Jose
		Alan
		Yeudiel
		Virgilio
		Fernando
		Diana
		Jorge
		Sergio
		Luis
		Carlos
		Olivia
		Jenifer
		Fernando2
		Saine
		Armando
		Omar
		Oscar
		Angel
		Cristian
		Gonzalo
		Ivan
		/;
print "Y el ganador es ..\n\r";
for(1..300){print "\a\r"=>becario[((rand($#becario)%($#becario-1))+1)]=>";nanosleep 100000};
print "\n";
