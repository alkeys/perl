#!/usr/bin/perl 
use strict;
use utf8;
no utf8;
#//by aviles//
my $ruta="BIBLIA COMPLETA.txt";
my @datos;
my $leng;
my $leng2;
my $cont=0;
open(archivo , "<", "$ruta");
@datos=<archivo>;
close(archivo);
#///////////////////////////////////////////
$leng=@datos;
my @aux_dato;
for(my $i=0;$i<$leng;$i++){
my $String=@datos[$i];
$String=~ tr/:,.;()""?¿¡!></ /;
if($String =~  /Dios/){
 #separar por espacios los parrafos
push @aux_dato, split(" ",$String);
}}
#//////////////////////////////////////////////

#/////////////////////////////////////////////
my $cont=0;
my $leng2=@aux_dato;
for(my $j=0;$j<$leng2;$j++){
my $strict2=@aux_dato[$j];
my $xd=length($strict2);

if($xd<=5){
if($strict2 =~ /Dios/){
  $cont++;
}}}
undef(@aux_dato);
#//////////////////////////////////////////////
print"la cantidad de la palabra Dios es de $cont";
