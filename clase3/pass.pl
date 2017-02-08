#/usr/bin/perl

use strict;
use warnings;

my %hash2;
my $filename="datos.txt";

open FILE,"<",$filename;
my @file=(<FILE>);
#print @file;
for(@file){
	my %hash;
	if(/(.*):(.*):(.*):(.*):(.*):(.*):(.*)/)
	{
		$hash{"user"}=$1;
		$hash{"pass"}=$2;
		$hash{"uid"}=$3;
		$hash{"gid"}=$4;
		$hash{"desc"}=$5;
		$hash{"home"}=$6;
		#$my @temp=split("\",$7);
		@hash{"shell"}=\@temp;
	}
	my $temp=$hash{"user"};
	$hash2{$temp}=\%hash; #le pasa la llave "user"  y su valor es un hash
}
for my $var(sort keys %hash2)
{
	print"\nLlave: ",$var,"\t","Valores: \n";
	for(sort keys %{$hash2{$var}}) #direccion de memoria convirtiendo a hash--> sacando los campos
	{
		print $_,":",$hash2{$var}{$_},"\n";
		if($_eq"shell")
		{
			for(@{$hash2{$var}{$_}}){
				print $_,"\n";
			}
		}
	}
}


close FILE;
