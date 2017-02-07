#!/usr/bin/perl
use strict;
use warnings;
use 5.014;
use 5.012;
use 5.018;
use Data::Dumper qw(Dumper);
use utf8;
=head1 Description
=pod
=encoding utf8

Script que recibe como argumento un archivo, el cual se obtendra
el numero de repitciones de ip, url, email y dominios. Estos se
guardaran en otro archivo llamado resultados.txt

Ejemplo de ejecucion
perl busqueda.pl archivo.txt

Salida: 

Las direcciones IP encontradas son:

TOTAL | IP     
        
 50   | 1.2.3.4
        
 34   | 4.5.6.7
        
 19   | 1.9.2.0
        
 1    | 9.8.3.9


Los dominios encontrados son:

TOTAL |   DOMINIO        
        
 50   | unam.mx          
        
 34   | seguridad.unam.mx
        
 19   | google.com.mx    
        
 1    | yahoo.com.mx 

=cut

my $file = 'resultados.txt';
my $IPbusqueda;
my $URLbusqueda;
my $DOMbusqueda;
my $EMAILbusqueda;
my %IPveces;
my %URLveces;
my %DOMveces;
my %EMAILveces;

my $nIP=0;
my $nEMAIL=0;
my $nDOMINIO=0;
my $nURL=0;


my $datos= shift or die "Se requiere como argumento el nombre del archivo\n",{chomp=>1};
open(FH, '<', $datos) or die "ERROR no se pudo abirir o no existe '$datos' $!";
	
open(FH2,'+>',$file)  or die "ERROR no se pudo abrir el archivo o no existe'$file' $!";

#open(LOG,'>>',"jhernandez.log") or die "ERROR no se pudo abrir el archivo o no existe\n"
 
while(<FH>) {
	chomp;
	#para IP
	if($_=~/(([0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9][0-9]|[1-9][0-9]|[0-9])/)
	{
		$IPbusqueda = ($&); #hace match con lo que encuentra
	    	$IPveces{$IPbusqueda}++; #la agrega al hash y aumenta en uno
		$nIP++;
	}
	
	#para DOMINIO
        if($_=~/([a-z]+|(www)).((\.|2E)[a-z]+)+((\.|2E)([a-z]{2,3})*)/)
        {
                $DOMbusqueda = ($&);    
                $DOMveces{$DOMbusqueda}++;
		$nDOMINIO++;
        }

	#para URL
	if($_=~/(((https|http|ftp):\/\/)(www(\.|2E))?|(www+\.))([\da-z\.-]+)(\.|2E)([a-z(\.|2E)]{2,6})([\/\w \?=.-]*)*\/?/)
	{
		$URLbusqueda = ($&);         
                $URLveces{$URLbusqueda}++;  
		$nURL++;
	}
	
	#para EMAIL
	if($_=~/(\w+|\W+|\w+\W+)((\.|\_\-)(\w+|\W+))*@(\w+|\W+)((\.|2E)[a-z0-9-]+)*((\.|2E)([a-z]{2,3})*)/)
	{
		$EMAILbusqueda=($&);
               	$EMAILveces{$EMAILbusqueda}++;
		$nEMAIL++;
        }

	
}
print"\n\n";
print FH2 "TOTAL DE IP DIFERENTES--> ",scalar(keys %IPveces),"\n";
print FH2 "TOTAL DE IP ENCONTRADAS-->",$nIP,"\n\n";
print FH2 "TOTAL DE DOMINIOS DIFERENTES-->",scalar(keys %DOMveces),"\n";
print FH2 "TOTAL DE DOMINIOS ENCONTRADOS-->",$nDOMINIO,"\n\n";
print FH2 "TOTAL DE URL DIFERENTES-->",scalar(keys %URLveces),"\n";
print FH2 "TOTAL DE URL  ENCONTRADAS-->",$nURL,"\n\n";
print FH2 "TOTAL DE EMAIL DIFERENTES-->",scalar(keys %EMAILveces),"\n";
print FH2 "TOTAL DE EMAIL ENCONTRADOS-->",$nEMAIL,"\n\n";





print FH2 "\n\nLas direcciones IP encontradas son:\n"; 
print FH2 "Total \t	 Ip's\n\n";
for(sort keys %IPveces)
{
	say FH2 $IPveces{$_},"\t\t",$_;
}
print FH2 "\n\n";


print FH2 "Los dominios encontrados son:\n\n";
print FH2 "Total \t  DOMINIO\n";
for(sort keys %DOMveces)
{
        say FH2 $DOMveces{$_},"\t",$_;
}
print FH2 "\n\n";


print FH2 "Las URL's encontradas son: \n";
print FH2 "Total \t  URL's\n";
for(sort keys %URLveces)
{
        say FH2 $URLveces{$_},"\t",$_;
}
print FH2 "\n\n";
print FH2 "TOTAL DE URL DIFERENTES-->",scalar(keys %URLveces),"\n";
print FH2 "TOTAL DE URL  ENCONTRADAS: ",$nURL,"\n\n";


print FH2 "Los Email's encontrados son: \n";
print FH2 "Total \t  EMAIL's\n";
for(sort keys %EMAILveces)
{
        say FH2 $EMAILveces{$_},"\t",$_;
}
print FH2 "\n\n";

close FH;
close FH2;
