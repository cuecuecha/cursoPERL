#!perl
use warnings;
use strict;
use Switch;
use utf8;

my $n1;
my $n2;
my $op;
my $total=0;

print "\t***Hola, bienvenido a la calculadora***\n\n";
sub menu
{
       # print"Ingresa el primer numero: ";
        #$n1=<STDIN>;
        #print"\nIngresa el segundo numero: ";
        #$n2=<STDIN>;

while($op != 5)
{
	print"1. Suma\n";
	print"2. Resta\n";
	print"3. Multiplicacion\n";
	print"4. Division\n";
	print"5. Salir\n";
	print("\nElige una opcion: ");
	$op=<STDIN>;
	chop($op);
	
	print"Ingresa el primer numero: ";
        $n1=<STDIN>;
        print"\nIngresa el segundo numero: ";
        $n2=<STDIN>;

	switch($op)
	{
		case 1 
        		{
			suma($n1,$n2);
			print "\n";}
		case 2
                        {
			resta($n1,$n2);
			print"\n";}
		case 3
                        {
                        multiplicacion($n1,$n2);

			print"\n";}
		case 4
			{
                        division($n1,$n2);
			print("\n");
			}

		case 5 {print"salio\n\n";}

	}

}
}
sub suma
{	
	print"\n\tSuma\n";
        #print"Ingresa el primer numero: ";
        my $ns1=shift;
        #print"\nIngresa el segundo numero: ";
        my $ns2=shift;
	print "El resultado es ",$n1+$n2,"\n";
}

sub resta
{
	print"\n\tResta\n";
        #                print"Ingresa el primer numero: ";
        my $nr1=shift;
        #                print"\nIngresa el segundo numero: ";
        my $n2=shift;

	print"El resultado es: ",$n1-$n2,"\n";
}
sub multiplicacion
{
	print"\n\tMultiplicacion\n";
        #print"Ingresa el primer numero: ";
        my $nm1=shift;
        #print"\nIngresa el segundo numero: ";
        my $nm2=shift;

	print"El resultado es: ",$n1*$n2,"\n";
}
sub division
{
        print("\n\tDivision\n");
        #print"Ingresa el primer numero: ";
        my $nd1=shift;
        #print"\nIngresa el segundo numero: ";
        my $nd2=shift;

	if($n2==0){
		print"No se puede realizar division";
	}
	else{
		$total=$nd1/$nd2;
		print "El resultado es: ",$total,"\n";
	}
}
&menu();
