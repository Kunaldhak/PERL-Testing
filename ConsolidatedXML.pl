#!/usr/bin/perl
use warnings;
use strict;
use Carp;
use File::Find;
use File::Spec::Functions qw( canonpath );
use XML::LibXML::Reader;
use Data::Dumper;
my $INFO;
my @ARGV ="C:/DCR"; 
die "Need directories\n" unless @ARGV;
find(
    sub {
        my $file = $_;
       #my $path = canonpath $File::Find::name;
        my $path =$_;

        return unless -f $path;
        return unless $file =~ /[.]xml\z/i;

        extract_information($path);
        return;
    },
    @ARGV
);
sub extract_information {
     my( $path)=@_;

    my $ret = open my $xmlin, '<', $path;
    unless ($ret) {
        carp "Cannot open '$path': $!";
        return;
    }

    my $reader = XML::LibXML::Reader->new(IO => $xmlin);
    unless ($reader) {
        carp "Cannot create reader using '$path'";
        return;
    }

    
    while ($reader->nextElement('shipto')) {
         $INFO = $reader->readOuterXml();
         
        print "$INFO\n";
        
    }
    close $xmlin
        or carp "Cannot close '$path': $!";

    return;
}