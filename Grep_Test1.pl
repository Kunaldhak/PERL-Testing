
	use strict;
	use warnings;

	my @files = qw(index.html test.html test.txt Makefile home.html help.doc README.txt);
	my @html_files = grep { /\.html$/ } @files;
	for my $file (@html_files) {
		print "$file\n";
	}

	
	