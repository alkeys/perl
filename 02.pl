#!/usr/bin/perl 
use strict;

#//by aviles//
my $ruta="BIBLIA COMPLETA.txt";
my @datos;
my @datos_repetidos;
my $leng;
my $cont=0;
open(archivo , "<", "$ruta");
@datos=<archivo>;
close(archivo);
#///////////////////////////////////////////
$leng=@datos;
my @aux_dato;
for(my $i=0;$i<$leng;$i++){
my $String=@datos[$i];
my $tama=length($String);
#separar por espacios los parrafos
push @aux_dato, split(" ",$String);
}


my $leng2=@aux_dato;
for(my $j=0;$j<$leng2;$j++){
my $strict2=@aux_dato[$j];
my $xd=length($strict2);
if($xd>4){
$strict2=~ tr/:,.;()""?¿¡!></ /;
$strict2=~ tr/a-zA-z//s;
push @datos_repetidos ,$strict2;
}}
undef(@aux_dato);
undef(@datos);

my %x; # contador de veces que aparece cada palabra
for ( my $i = 0; $i < scalar @datos_repetidos; ++$i ) { # leer cada línea del archivo
my @temp = split( /\|/, $datos_repetidos[$i] ); # determino a qué corresponde cada campo en la línea actual
my $query = $temp[0];
$x{ $query }++; # aumento en uno las veces que aparece palabre
}
my @values10;
my @values = values( %x );#datos contados 
my @keys = keys( %x );#vecto de palabras
my $leng2=@values;
for(my $j=0;$j<$leng2;$j++){
if(@values[$j]>1600){
push @values10,@keys[$j],@values[$j];
}}
print"@values10";
