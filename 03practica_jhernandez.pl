#!perl
use warnings;
use strict;
my $cmd;
my @resultados=();
my $num1;
my $num2;
my %HoF = (                           # Compose a hash of functions
    salir   =>  sub { exit }, #subrutina explicita, subrutina anonima
    help    =>  sub{print"Indica una operacion"},
    suma    =>  \&suma,
    resta   =>  \&resta,
    multi   =>  \&multi,
    divi    =>  \&divi,
    modulo     =>  sub{my $a=shift; my $b=shift; print $a%$b,"\n"; push(@resultados,$a%$b);},
    mostrar =>  \&resul,
);
while(1){
#$cmd=$ARGV[0];

print"Que operacion deseas realizar:\n";
$cmd=<STDIN>;
chomp($cmd);

if($HoF{lc $cmd})
  { #lc -> cambiar cadena a minusculas
    if($cmd ne"mostrar" && $cmd ne "salir" && $cmd ne "help" ){

      print"Ingresa el primer numero: \n";
      $num1=<STDIN>;
      print("Ingresa el segudon numero: \n");
      $num2=<STDIN>;
    }
      $HoF{lc $cmd}->($num1,$num2); 
    
  }
else {
    warn "Unknown command: `$cmd'; Try `help' next time\n"; #regresa cero
  }
}

sub suma{
   my $a=shift;
   my $b=shift;
   push(@resultados,$a+$b);
   print $a+$b,"\n";
}
sub resta{
   my $a=shift;
   my $b=shift;
   push(@resultados,$a-$b);
   print $a-$b,"\n";
}
sub multi{
   my $a=shift;
   my $b=shift;
   push(@resultados,$a*$b);
   print $a*$b,"\n";
}
sub divi{
   my $a=shift;
   my $b=shift;
   if($b==0)
   {
    print"no se puede realizar la operacion\n";
   }else{
    push(@resultados,$a/$b);
  }
}
sub resul{
  print"Impresion de resultados: \n\n";
  for my $n (@resultados)
  {
    print $n,"\n";
  }
}

