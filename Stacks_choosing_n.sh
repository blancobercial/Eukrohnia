###Script to test n once you have chosen M. Creates the outfiles directory and run the populations with the chosen M and n 
######################
#echo doing ustacks
######################
## m = 3 fixed
## M from 0 to 6, until number of assembled loci
## then n=M+/- 1 until 
#mkdir M2
#cp EukRegion.txt M2/EukRegion.txt
#N=1
#for f in *.fastq; do
#ustacks -f $f  -o ./M2 -i $N -m 3 -M 2 -p 6 -d 
#N=$((N+1))
#done


#######################
echo 'cstacks for regions'
#######################
mkdir M2n1
cp EukRegion.txt M2n1/EukRegion.txt
cstacks -P ./M2 -o ./M2n1 -M EukRegion.txt -n 1 -p 6

##########################
echo sstacks
##########################
sstacks -P ./M2n1 -M EukRegion.txt -p 6

tsv2bam -P ./M2n1 -M EukRegion.txt -t 6

gstacks -P ./M2n1 -M EukRegion.txt -t 6 --details


##########################
echo "population map"
##########################

mkdir M2n1res
populations -P ./M2n1 -M EukRegion.txt -p 5 -r 0.8 -O ./M2n1res --log_fst_comp --verbose --fstats -f p_value -t 6 --structure --genepop --fasta_samples_raw --phylip_var --vcf 

echo "done n1"


#######################
echo 'cstacks for regions'
#######################
mkdir M2n2
cp EukRegion.txt M2n2/EukRegion.txt
cstacks -P ./M2 -o ./M2n2 -M EukRegion.txt -n 2 -p 6

##########################
echo sstacks
##########################
sstacks -P ./M2n2 -M EukRegion.txt -p 6

tsv2bam -P ./M2n2 -M EukRegion.txt -t 6

gstacks -P ./M2n2 -M EukRegion.txt -t 6 --details


##########################
echo "population map"
##########################

mkdir M2n2res
populations -P ./M2n2 -M EukRegion.txt -p 5 -r 0.8 -O ./M2n2res --log_fst_comp --verbose --fstats -f p_value -t 6 --structure --genepop --fasta_samples_raw --phylip_var --vcf 

echo "done M2n2"

#######################
echo 'cstacks for regions'
#######################
mkdir M2n3
cp EukRegion.txt M2n3/EukRegion.txt
cstacks -P ./M2 -o ./M2n3 -M EukRegion.txt -n 3 -p 6

##########################
echo sstacks
##########################
sstacks -P ./M2n3 -M EukRegion.txt -p 6

tsv2bam -P ./M2n3 -M EukRegion.txt -t 6

gstacks -P ./M2n3 -M EukRegion.txt -t 6 --details


##########################
echo "population map"
##########################

mkdir M2n3res
populations -P ./M2n3 -M EukRegion.txt -p 5 -r 0.8 -O ./M2n3res --log_fst_comp --verbose --fstats -f p_value -t 6 --structure --genepop --fasta_samples_raw --phylip_var --vcf 

echo "done M2n3"
