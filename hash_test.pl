use warnings;
my %hash_check=('foo',22,'bar',33,24,'hi');
print "$hash_check{24} \n";
my %hash=(
'josh'=> 'drake',

'kunal'=>'dhak',
'anil' => 'sing'

);

print "$hash{anil} \n";

while(($key,$value)=each %hash){
	print "$key => $value \n" ;
}

if(exists $hash{'josh'}){
	print "josh exist ............";
}


