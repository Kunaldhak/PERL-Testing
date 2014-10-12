use warnings;
use strict;

my @lists = qw(hey hello there you are);
my @removed = splice @lists, 2;
print "Using Splice ..  @removed \n" ;
my $email = 'kunal.dhak@kpit.com';
print " $email \n";
foreach ( 1 .. 10 ) {
	print "$_ \n";
}
#( $will, $smith ) = Something;
#print "$smith";

my @sorts_list = sort(@lists);
print "@sorts_list \n";
while ( my ( $index, $value ) = each @lists ) {
	print "$index : $value \n";

}

sub routine{
	my($n,$m);  # private variables for thiss block
	$n=5;
	$n += $n;
	print " \n $n \n";
}
&routine;

sub max{
	if($_[0]>$_[1]){
		$_[0];
	}
	else{
		$_[1];
	}
}
my $max1=&max(10,15);
print " \n $max1 \n";


sub ultmax{
	my ($maximun)=shift @_;
	foreach(@_){
		if($_>$maximun){
			$maximun=$_;
	}
	}
$maximun;
	
}
my @numlist=(10,73,28,10,64,22);
my $ultmaximum =&ultmax(@numlist);
print("\n $ultmaximum \n");


while(defined(my $line=<STDIN>)){
	print "$line" ;
}

if(!open FILE, ">", "filename.txt"){
	
	die "can not create log file : $! ";
	
}



my $file="D:\\sap.txt";

my $string_output="testing data";


open (FILE, "> $file") || iwpt_output("could not open $!");
print FILE $string_output;
close FILE;


print "created";








