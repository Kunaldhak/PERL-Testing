use warnings;

foreach my $file(glob '*.xml'){
	my $filelist=$file;
	$filelist=~s/\.txt$/.xml/;
	if(-e $filelist){
		warn "cant rename $file to $filelist ";
	}
elsif(rename $file=>$filelist){
	print "Sucess";
}
else{
	warn "rename $file to $filelist failed : $!\n";
}

}