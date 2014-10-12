#$line=<STDIN>;
#if($line eq "\n"){
#print "Blank line \n"
#
#}
#else{
#print "$line";
#}



my $file = "C:\\Users\\kunald1\\Desktop\\region_list";

open LIST, "<$file" or die "Cannot open $file for reading\n";
my @data = <LIST>;
close LIST;


print "@data";