#!perl
use warnings;
use strict;
use Switch;
=pod
=h1 Description
El script recibe dos numeros, estos se sumaran
La salida se mostrara en pantalla
=cut
my $n1;
my $n2;
my $op;
my $total=0;

print "\t***Hola, bienvenido a la calculadora***\n\n";
while($op != 5)
{
	print"1. Suma\n";
	print"2. Resta\n";
	print"3. Multiplicacion\n";
	print"4. ¿Que es pragma?\n";
	print"5. Salir\n";
	print("\nElige una opcion: ");
	$op=<STDIN>;
	chop($op);
	switch($op)
	{
		case 1 
			{print"\n\tSuma\n";
			print"Ingresa el primer numero: ";
        		$n1=<STDIN>;
			print"\nIngresa el segundo numero: ";
		        $n2=<STDIN>;
			$total = $n1+$n2;
			print"El resultado  es: ",$total;
			print "\n";}
		case 2
                        {print"\n\tResta\n";
			print"Ingresa el primer numero: ";
                        $n1=<STDIN>;
                        print"\nIngresa el segundo numero: ";
                        $n2=<STDIN>;
                        $total = $n1-$n2;
                        print"El resultado  es: ",$total;
			print"\n";}
		case 3
                        {print"\n\tMultiplicacion\n";
			print"Ingresa el primer numero: ";
                        $n1=<STDIN>;
                        print"\nIngresa el segundo numero: ";
                        $n2=<STDIN>;
                        $total = $n1*$n2;
                        print"El resultado  es: ",$total;
                        print"\n";}
		case 4
			{print"\t\t\n***PRAGMA***\n";
			print"Es un tipo de mudulo que entra en accion  cuando se ejecuta el programa";
			print"\nsirven como una especie de pistas para el compilador para que realicen una tarea, un ejemplo es el scrict\n";
			print"que se ocupa para verificar que se ha inicializado una variable, entre otras cosas\n\n";
			}

		case 5 {print"salio\n\n";}

	}

}

