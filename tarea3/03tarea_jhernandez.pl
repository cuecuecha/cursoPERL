#!/usr/bin/perl

=head1 Descripcion
=pod
	Script que hace uso de html templates
	para mostrar las partes que componen
	el archivo passwd

	Ejemplo de uso:
		perl 03tarea_jhernandez.pl

	Abrir resultados.html en  un navegador para visualizar
	el contenido
=cut
use warnings;
use HTML::Template;
open FILE,">resultados.html" or die "Error";


print FILE &showForm();
close FILE;

sub showForm{
my $output;
my $template = HTML::Template->new(filename => './templa.tmpl',
									no_includes => 1); ##
						#hace referencia al template creado
my @loop_data = ();  #arreglo donde se guardara los datos

#programa
my %hash2;
my $filename="datos.txt";
open FH,"<",$filename;
my @file=(<FH>);


for(@file) 
{
    chomp;
    my %hash;
	if(m{(.*):(.*):(.*):(.*):(.*):(.*):(.*)})
	{
		$hash{"user"} = $1;
		$hash{"pass"} = $2;
		$hash{"uid"} = $3;
		$hash{"gid"} = $4;
		$hash{"desc"} = $5;
		$hash{"home"} = $6;
		my @temp= split /\//,$7;
		$hash{"shell"} = \@temp;
	}
	my $temp=$hash{"user"};
	$hash2{$temp}=\%hash;

}


for my $var(sort keys %hash2)
{
	for (sort keys %{$hash2{$var}})
	{
		
		push(@loop_data, { llave => "$_", valor => "$hash2{$var}{$_}"} );
		#mediante push agrega los valores
		#if ($_ eq "shell")
		#{
			
		#	for(@{$hash2{$var}{$_}})
		#	{
		#		#push(@loop_data, { valor => "$_"});
		#	}
		#}

	}
}

   
$template->param(passw => \@loop_data);
$output.=$template->output(); #guarda la salida del template
close FH;#cierra archivo de lectura
return $output; #retorna los valores guardados
}