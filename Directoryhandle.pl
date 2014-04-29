use warnings;
use File::Spec::Functions;;

#my $dir = 'D:\RCCL Softwares';
#opendir my $dh, $dir or die "can not open $dir: $!";
#foreach $file ( readdir $dh ) {
#	print "one file in $dir is file $file \n";
#}
#closedir $dh;

#$dirname='D:\RCCL Softwares';
#opendir my $dir, $dirname or die "Cannot open $dirname : $!";
#while(my $name=readdir$dir){
#	next if $name=~/^\./;
#	$name="$dirname/$name";
#	next unless -f $name and -r $name;
#}

#unlink 'file.csv';
#unlink glob '*.html';
#
#rename 'new.xml', 'newest.xml';



#///// Directory Listing ...........

#my $directory="D:\\RCCL Softwares";
#opendir(DIR, $directory) or die $!;
#	while (my $file = readdir(DIR)) {
#
#        # Use a regular expression to ignore files beginning with a period
#        next if ($file =~ m/^\./);
#        print "$file\n";
#
#    }
#    closedir(DIR);
    
    
    
   my $pathname="C:\\Users\\kunald1\\AppData\\Local";
   opendir(DIR,$pathname) or die $!;
   while(my $files=readdir(DIR)){
   	print "$files\n";
   }
   closedir(DIR); 
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
   
    