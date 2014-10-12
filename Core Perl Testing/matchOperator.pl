$bar = "This is foo and again foum";

if( $bar =~ /foo/ ){
	 print "First time is matching\n"; 
 	}
else { 
	print "First time is not matching\n"; 
	}
$bar = "fo";
if( $bar =~ /foo/ ) {
	 print "Second time is matching\n"; 
	}
else {
	 print "Second time is not matching\n";
	}
