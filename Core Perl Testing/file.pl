my $file = "sap.txt";

my $string_output = "testing data";

open( FILE, "> $file" ) || iwpt_output("could not open $!");
print FILE $string_output;
close FILE;

print "created";

if(open FILE, ">", "filename.txt"){
	
	print FILE $string_output ;
	
}
else {
	die "can not create log file : $! ";
}