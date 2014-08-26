use strict;
use warnings;
use XML::LibXML;

my $file = "xmltest.xml";

#my $dir = 'C:\\Users\\kunald1\\Desktop\\New folder';
#opendir my $dh, $dir or die "can not open $dir: $!";
#foreach my $file ( readdir $dh ) {
#	next if($file =~ /^\.$/);
#    next if($file =~ /^\.\.$/);
    my $root = $file->documentElement();
for my $node ($root->findnodes('/record/item [name/text()="breadcrumb" ]')) {
   $node->parent()->removeChild($node);
}
