#!/usr/bin/perl
use warnings;
use strict;

#my $var1;
#my $var2;
#chomp($var1=<STDIN>);
#chomp($var2=<STDIN>);

sub suma()
{
	#print $var1+$var2;
	@_;
	######@_[0]; ESTO NO SE HACE
	my $v1=$_[0];
	my $v2=$_[1];
	my $va1=shift; #shift obtiene primer elemento de un arreglo y lo elimina del arreglo
	my $va2=shift;
	print $v1+$v2,"\n";
	print $va1+$va2,"\n";
}

#primer opcion suma();
#&suma($var1,$var2); #recomendable
#menos recomendable suma;
my @arr1=(1..5);
my @arr2=('a'..'f');
sub arreglo
{
	#my @arreglo=@_;
	#my @letras=$_[0];
	#my @numeros=$_[1];
	my @letras=@{$_[0]};
	my @numeros=@{$_[1]};
	print @letras,"\n";
	print @numeros,"\n";
}

#&arreglo('a'..'f',1..5);
&arreglo(\@arr1,\@arr2);

