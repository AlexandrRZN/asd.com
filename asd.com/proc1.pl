#!/usr/bin/perl -w

#модули в составе ядра
use strict;
use warnings;
#no warnings 'layer';
use Cwd;
#use POSIX qw(strftime);
use File::Path qw(make_path rmtree);
use utf8;

use CGI qw(:all); # модуль удален из базовой комплектации начиная с версии 5.22
use CGI::Carp qw( warningsToBrowser fatalsToBrowser ); #идет в составе CGI

print header();
print "Величина месячного взноса?";
$pmt=<STDIN>;
chomp $pmt;
print "Годщовая процентная ставка?";
$interest=<STDIN>;
chomp $interest;
print "Период депозита в месяцах";
$mons=<STDIN>;
chomp $mons;
# В формуле заложена месячная процентная ставка
$interest/12;
$total=$pmt*((1+$interest)**($mons-1))/$interest;
print "После $mons месяцев при ежемясячной ставке $interest \n";

print "у вас будет сумма $total.\n;
