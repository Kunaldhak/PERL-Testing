  use XML::Simple;
  use warnings;
  
   
   # create object
   $xml = new XML::Simple;
   
   # read XML file
   $data = $xml->XMLin("data.xml");
   
   # access XML data
   print "$data->{name} is $data->{age} years old and works in the $data->{department} section\n";