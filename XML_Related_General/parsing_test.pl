use strict;

use XML::LibXML;

#my $filename = $ARGV[0];
my $filename = "testxml.xml";
my $parser = XML::LibXML->new();
my $doc    = $parser->parse_file($filename);
my $xc = XML::LibXML::XPathContext->new( $doc->documentElement()  );


foreach my $sections ($xc->findnodes('/HOSTNAME/PATROL/ACL/USERNAME'))
 {
    my $username    = $sections->findvalue('./@name');
    my $permissions = $sections->findvalue('./PERMISSION');
    my $host        = $sections->findvalue('./HOST');
    print "username: $username\n";
    print "permission :  $permissions\n";
    print "host :  $host\n";
}