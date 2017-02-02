#!perl
use warnings; #es un pragma
use strict; #pragma ayuda definir algunos alcances, control sobre el programa, para evitar ambiguedad
my @a; #palabra reservada my @ --> es para arreglo

$a[0]=5; #arreglo --> no es necesario especificar el tamaño del arreglo
$a[1]=4;
# $ --> se usa para especificar que es escalar
#@a[5]=4; --> esto no se hace 
#print @a; #imprime todo el contenido del arreglo 
#print $#a; #imprime el indice del ultimo elemento en el arreglo
$a[10]=7;
@a=('a'..'z');#asignanddo al arreglo de 1 hasta 5 --> operando rango (inicio .. fin) puede sobreescribir
#print @a;
#for ($i=0;$i<$#a;$i++) {print $a[$i]};
foreach (@a){print $_}; # $_ -> variable

