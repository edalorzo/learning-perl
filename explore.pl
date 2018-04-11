#!/usr/bin/perl -w
# explore.pl ---

use strict;
use warnings;
use Date::Manip;
use Data::Dumper;
use 5.18.2;

foreach my $month (1..12) {
    foreach my $day (1..31) {

        if ($month == 2 && $day > 28) {
            next;
        }

        $month = sprintf("%02s", $month);
        $day = sprintf("%02s", $day);
        
        my $text = "2018" . $month . $day . "000000";
        my $date = ParseDate($text);
        if (!Date_IsWorkDay($date)) {
            print UnixDate($text, "%a %d, %b %Y\n");
        } 
    }    
}




