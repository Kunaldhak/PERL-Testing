use strict;
use warnings;
use XML::LibXML;

my %count;
my $directory = "D:\\EN-US";

opendir( DIR, $directory )
  || die "Unable to open directory - $!\n";

#my @files = grep /\.txt/, readdir( DIR );
my @files = readdir(DIR);

foreach my $file (@files) {
	next if ( $file =~ /^\.$/ );
	next if ( $file =~ /^\.\.$/ );
	my $path = $directory . "\\" . $file;

	#	print "$path \n";

	my $parser = XML::LibXML->new();
	my $doc    = $parser->parse_file($path);
	my $xc     = XML::LibXML::XPathContext->new( $doc->documentElement() );

	#	my $record = $xc->findnodes('/record/item');
	foreach my $sections ( $xc->findnodes('/record') ) {
		my $recordname = $sections->findvalue('./@name');
		my $item_name  = $sections->findvalue('./item/@name');
		my $value      = $sections->findvalue('./item/value');
#foreach my $item($item_name){
#	print "Record Name : :  $recordname\n";
#	print "Item Name : $item_name\n value :  $value\n\n";
#}
		print "Record Name : :  $recordname\n";
		print "Item Name : $item_name\n value :  $value\n\n";

		#		print "value :  $value\n\n";

	}
}
closedir(DIR);

