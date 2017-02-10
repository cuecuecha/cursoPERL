#!/usr/bin/perl
use strict;
package interfaces;#
use Net::Ifconfig::Wrapper;
use HTML::Template;
use parent 'CGI::Application';
use CGI::Application::Plugin::Forward;
#use Config::config;
sub setup {
        my $self = shift;
        $self->run_modes(
                'view' => 'showForm', #modo de ejecución -> subrutina nombre cualquiera
                'controler' => 'changeIP',
        		'menu' => 'menu',
        		'suma' => 'suma',
        		'resta' => 'resta',
        		'multiplicacion' => 'multiplicacion',
        		'division' => 'division',
               ); 
        $self->start_mode('menu');#modo de ejecucion el cual va a empezar
        $self->mode_param('selector');#CGI identifica el modo de seleccion
        
}

sub menu{
	my $output;
	my $template = HTML::Template->new(filename => './suma.tmpl');
	
	$output.=$template->output();
	return $output;
}



sub suma{
	my $self=shift;
	my $q=$self->query();
	my $a=$q->param('numero1');
	my $b=$q->param('numero2');
	return $a+$b;
	#return $self->forward('menu');
}
sub resta{
	my $self=shift;
	my $q=$self->query();
	my $a=$q->param('numero3');
	my $b=$q->param('numero4');
	#my $resultado=push(@q,$a+$b);
	return $a-$b;
	
}
sub multiplicacion{
	my $self=shift;
	my $q=$self->query();
	my $a=$q->param('numero5');
	my $b=$q->param('numero6');
	#my $resultado=push(@q,$a+$b);
	return $a*$b;
	
}
sub division{
	my $self=shift;
	my $q=$self->query();
	my $a=$q->param('numero7');
	my $b=$q->param('numero8');
	#my $resultado=push(@q,$a+$b);
	return $a/$b;
	
}




1

