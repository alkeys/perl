#!/usr/bin/perl 
use strict;

#//by aviles//
my $ruta="BIBLIA COMPLETA.txt";
my @datos;
my @datos_repetidos;
my $leng;
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

$ruta="palabras.txt";
open(archivo , "<", "$ruta");
@datos=<archivo>;
close(archivo);

$leng=@datos;
my @aux_dato;
for(my $i=0;$i<$leng;$i++){
my $String=@datos[$i];
$String=~ tr/:,.;()""?¿¡!></ /;
#separar por espacios los parrafos
push @aux_dato, split("\n",$String);
}

my @vector_temp;
my @vector_temp2;
for(my $j=0;$j<$leng2;$j++){
if(@values[$j]>1600){
push @vector_temp,@values[$j];
push @vector_temp2,@keys[$j];#datos de palabras
}}
my $cont=0;
my $tama=@datos;

foreach my $string (@vector_temp2) {
for(my $j=0;$j<$tama;$j++){
    my $xdd="@datos[$j]";
    $xdd =~ tr/:,.;()""?¿¡!"\f"></ /;
    if($string !~ /$xdd/){
    }else {
             @vector_temp2[$cont]="*";
     @vector_temp[$cont]="*"
    }

}
$cont++;
}
$tama=@vector_temp;

for(my $j=0;$j<$tama;$j++){
    print"@vector_temp2[$j]-";
    print"@vector_temp[$j]\n";

}

