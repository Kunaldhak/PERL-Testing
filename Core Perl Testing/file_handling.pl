my $file="D:\\D-8066.txt";
open(FILE,"<",$file) or die $!;
my @data = <FILE>;
close FILE;


print "@data";

print "\n ";