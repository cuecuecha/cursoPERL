#!perl
use warnings;
use strict;

#JOIN
#my @nombres=("Hugo","Paco","Luis");
#print @nombres,"\n";
#my $nom=join "<->",@nombres;#descompone el arreglo, junta <-> entre cada nombre del arreglo nombres
#print $nom,"\n";

#SPLIT
my $var = "www-data:x:33:33:www-data:/var/www:/bin/sh";
my @campos=();
@campos = split ":",$var;
for(@campos){
	print $_,"\n";
}
print "usuario: ",$campos[0],"\n";
print "home: ",$campos[5],"\n";

my ($usuario,$shell) = (split /:/,$var)[0,6]; #asignacion  --> es lo mismo /:/ que ":"
print "usuario: ",$usuario,"\n";
print "shell: ",$shell,"\n";
