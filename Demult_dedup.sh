###using the method from Schweyen H, Rozenberg A, Leese F (2014) Detection and Removal of PCR Duplicates in Population Genomic ddRAD Studies by Addition of a Degenerate Base Region (DBR) in Sequencing Adapters. The Biological Bulletin 227:146-160. The perl demultiplexes and remove duplicates. 

perl preprocess_ddradtags.pl -l lane1_NoIndex_L001_R1_37S.fastq.gz -r lane1_NoIndex_L001_R2_37S.fastq.gz -m 15 -b 37S.txt -i NNNNNHMMGG -y 0 -x 0 -gz n 
perl preprocess_ddradtags.pl -l lane1_NoIndex_L001_R1_27S.fastq.gz -r lane1_NoIndex_L001_R2_27S.fastq.gz -m 15 -b 27S.txt -i NNNNNHMMGG -y 0 -x 0 -gz n 



