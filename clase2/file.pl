#!perl
use warnings;
use strict;
=pod
=head2 Description
< lectura
> escritura
>> concatenacion
+> lectura/escritura, si no existe se crea
+< lectura/escritura, si no existe marca error
=cut

#open PASS,"/tmp/passwd"; #nombreMayusculas,rutaarchivo
open PASS, "/tmp/passwd2" or die "ERROR ($!)"; #si no lo puedes abirir manda un mensaje
while(<PASS>){#lee el manejador de archivo <> para poder leerlo
	print $_;
}
close PASS;


