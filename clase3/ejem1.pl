#!perl

<<<<<<< HEAD
=======

>>>>>>> fbbb3c8b17dcd87d68697ab31a59bf2669842523
use strict;
use warnings;

#my %hash;
my %hash2;
my $filename="datos.txt";

open FILE,"<",$filename;
my @file=(<FILE>);

for(@file)
{
	my %hash;
	if(/(.*):(.*):(.*):(.*):(.*):(.*):(.*)/)
	{
		$hash{"user"} = $1;
		$hash{"pass"} = $2;
		$hash{"uid"} = $3;
		$hash{"gid"} = $4;
		$hash{"desc"} = $5;
		$hash{"home"} = $6;
		my @temp= split ("/",$7);
		$hash{"shell"} = \@temp;
	}
	my $temp=$hash{"user"};
	$hash2{$temp}=\%hash;
}

for my $var(sort keys %hash2)
{
<<<<<<< HEAD
	#print "\nLlave del hash2: \n",$var,"\n";
	#print "\nValor del hash2: \n", $hash2{$var};
	for (sort keys %{$hash2{$var}})
	{
		#print $_, ":", $hash2{$var}{$_},"\n";
		print("\%hash2{$var}{$_}=$hash2{$var}{$_}\n");
		if ($_ eq "shell")
		{
			print("Se valido que la llave es shell, como shell es una referencia a arreglo, se puede iterar");
			for(@{$hash2{$var}{$_}})
			{
				print("\%hash2{$var}{$_}\n");
=======
	print "\n Llave : ", $var, "   Valores: \n";
	for (sort keys %{$hash2{$var}})
	{
		print $_, ":", $hash2{$var}{$_},"\n";
		if ($_ eq "shell")
		{
			for(@{$hash2{$var}{$_}})
			{
>>>>>>> fbbb3c8b17dcd87d68697ab31a59bf2669842523
				print $_, "\n";
			}
		}
		#print $_, ":", $hash2{$var}{$_},"\n";
	}

}

close FILE;
