#!perl
use warnings;
use strict;
my @a=('a'..'z');
my @z=();#declaracion de arreglo vacio
my $x=$a[5];
my $y=@a; #Asigna el ultimo elemento del arreglo a $y o el numero de elementos
	  #es un cambio de contexto arreglo a escalar
#print "@a\n";#imprime los elementos del arreglo
#print 0+@a; #convierte el arreglo en escalar, es decir, el numero de elementos es un escalar
#print $x,$y;


($x,@z)=($x,@a); #asignacion
#print $x;
#print @a[5,8],"\n";#imprime dos elementos en la posicion 5  y 8 f i
#print @a[5..8],"\n"; #imprime el rango de la posicion 5 a 8 f g h i
#print @z;
#$x=@a;
$x=\@a; #\@a --> referencia -- quiero la referencia del arreglo a
print $x,"\n";
print @a,"\n";
ref @a; #ref --> de que tipo es la variable
ref $x;
print $x->[5],"\n";
print @x->[5..8];

for(@$x) # @$x --> esa referencia tratala como un arreglo 
{
	print $_;
}


