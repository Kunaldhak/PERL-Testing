use strict;
use warnings;

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
	open( FILE, "<", $path ) or die $!;
	if ( -e $path ) {

		# print "%FILE \n";
		print "$path ::\n";
		while ( my $row = <FILE> ) {
			chomp($row);
			print "$row \n";
		}
	}
	else {
		print "$file doesn't exists\n";
	}
	close(FILE);
}
closedir(DIR);
