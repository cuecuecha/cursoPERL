#!perl
use warnings;
use strict;
if(100 eq 100)
{
	print $_,"hola\n";
}
if(100 eq '100')
{
	print $_,"adios\n";
}
if(100==100)
{
	print $_,"hola\n";
}
if(100=='100')
{
	print $_,"adios\n";
}


