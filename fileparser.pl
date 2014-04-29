use TeamSite::Config;
use XML::XPath;
use XML::XPath::XMLParser;
 
opendir(DH, "C:\\en_US");
my @files = readdir(DH);
closedir(DH);
 
opendir(DT, "C:\\Saved en_US");
my @filesT = readdir(DT);
closedir(DT);
 
my $count = 0;
my $finalStr ="";
my %faqHash;
 
          foreach my $fileCH (@filesT)
          {
                   # skip . and ..
                   next if($fileCH =~ /^\.$/);
                   next if($fileCH =~ /^\.\.$/);
                   my $targetFileCH = "//MRMTSPROD01/default/main/tradewind/WORKAREA/emd/templatedata/faq/contextual_help/data/en_US/".$fileCH;
                   chomp($targetFileCH);
                   my $pCH = XML::Parser->new( NoLWP => 1);
                   my $xpCH = XML::XPath->new(parser => $pCH, filename => $targetFileCH);
                  
                   my $faq_sel="";
                   foreach my $xmlrepoNodeCH  ($xpCH->find('/record/item[@name="faq_sel"]/value/text()')->get_nodelist)
                   {$faq_sel = $xmlrepoNodeCH->getValue;}
                  
                   foreach my $xmlrepoNodeCH1  ($xpCH->find('/record/item[@name="faq_question_selected"]/value/text()')->get_nodelist)
                   {$question = $xmlrepoNodeCH1->getValue;}
                  
                   $faqHash{$faq_sel} = $question;            
          }
 
foreach my $file (@files)
{
# skip . and ..
$finalStr ="";
next if($file =~ /^\.$/);
next if($file =~ /^\.\.$/);
my $targetFile = "//MRMTSPROD01/default/main/Test/WORKAREA/cmo_chinese_tradewind/templatedata/web_page/cmo/data/en_US/".$file;
 
$count = $count + 1;
print $count."\n";
chomp($targetFile);
my $p = XML::Parser->new( NoLWP => 1);
my $xp = XML::XPath->new(parser => $p, filename => $targetFile);
 
foreach my $xmlrepoNode  ($xp->find('/record/item[@name="web_page_name"]/value/text()')->get_nodelist)
{$web_page_name = $xmlrepoNode->getValue;}
 
$contxt_help="";
foreach my $xmlrepoNode  ($xp->find('/record/item[@name="contextual_help"]/value/item[@name="faq_sel"]/value/text()')->get_nodelist)
{
	 $contxt_help = $xmlrepoNode->getNodeValue;
          my $question="";
          $question = $faqHash{$contxt_help};
          $finalStr.=$web_page_name.",\"".$contxt_help."\",\"".$question."\"\n";
}
 
open (FILETAR, ">>data_contextual_help.csv") or die "Could not open $targetFile : $!\n";
          print FILETAR $finalStr;
          close(FILETAR);
#print FILETAR
 
}