##Script to test M from 0 to 6. Creates the outfiles directory and run the populations with the chosen M
######################
#echo doing ustacks
######################
## m = 3 fixed
## M from 0 to 6, until number of assembled loci
## then n=M+/- 1 until 
#mkdir M0
#cp EukRegion.txt M0/EukRegion.txt
#N=1
#for f in *.fastq; do
#ustacks -f $f  -o ./M0 -i $N -m 3 -M 0 -p 6 -d 
#N=$((N+1))
#done


#######################
echo 'cstacks for regions'
#######################

cstacks -P ./M0 -M EukRegion.txt -n 0 -p 6

##########################
echo sstacks
##########################
sstacks -P ./M0 -M EukRegion.txt -p 6

tsv2bam -P ./M0 -M EukRegion.txt -t 6

gstacks -P ./M0 -M EukRegion.txt -t 6 --details


##########################
echo "population map"
##########################

mkdir M0res
populations -P ./M0 -M EukRegion.txt -p 5 -r 0.8 -O ./M0res --log_fst_comp --verbose --fstats -f p_value -t 6 --structure --genepop --fasta_samples_raw --phylip_var --vcf 

echo "done M0"


######################
#echo doing ustacks
######################
## m = 3 fixed
## M from 0 to 6, until number of assembled loci
## then n=M+/- 1 until 
#mkdir M1
#cp EukRegion.txt M1/EukRegion.txt
#N=1
#for f in *.fastq; do
#ustacks -f $f  -o ./M1 -i $N -m 3 -M 1 -p 6 -d 
#N=$((N+1))
#done


#######################
echo 'cstacks for regions'
#######################

cstacks -P ./M1 -M EukRegion.txt -n 0 -p 6

##########################
echo sstacks
##########################
sstacks -P ./M1 -M EukRegion.txt -p 6

tsv2bam -P ./M1 -M EukRegion.txt -t 6

gstacks -P ./M1 -M EukRegion.txt -t 6 --details


##########################
echo "population map"
##########################

mkdir M1res
populations -P ./M1 -M EukRegion.txt -p 5 -r 0.8 -O ./M1res --log_fst_comp --verbose --fstats -f p_value -t 6 --structure --genepop --fasta_samples_raw --phylip_var --vcf 

echo "done M1"
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

cstacks -P ./M2 -M EukRegion.txt -n 0 -p 6

##########################
echo sstacks
##########################
sstacks -P ./M2 -M EukRegion.txt -p 6

tsv2bam -P ./M2 -M EukRegion.txt -t 6

gstacks -P ./M2 -M EukRegion.txt -t 6 --details


##########################
echo "population map"
##########################

mkdir M2res
populations -P ./M2 -M EukRegion.txt -p 5 -r 0.8 -O ./M2res --log_fst_comp --verbose --fstats -f p_value -t 6 --structure --genepop --fasta_samples_raw --phylip_var --vcf 

echo "done M2"


######################
#echo doing ustacks
######################
## m = 3 fixed
## M from 0 to 6, until number of assembled loci
## then n=M+/- 1 until 
#mkdir M3
#cp EukRegion.txt M3/EukRegion.txt
#N=1
#for f in *.fastq; do
#ustacks -f $f  -o ./M3 -i $N -m 3 -M 3 -p 6 -d 
#N=$((N+1))
#done


#######################
echo 'cstacks for regions'
#######################

cstacks -P ./M3 -M EukRegion.txt -n 0 -p 6

##########################
echo sstacks
##########################
sstacks -P ./M3 -M EukRegion.txt -p 6

tsv2bam -P ./M3 -M EukRegion.txt -t 6

gstacks -P ./M3 -M EukRegion.txt -t 6 --details


##########################
echo "population map"
##########################

mkdir M3res
populations -P ./M3 -M EukRegion.txt -p 5 -r 0.8 -O ./M3res --log_fst_comp --verbose --fstats -f p_value -t 6 --structure --genepop --fasta_samples_raw --phylip_var --vcf 

echo "done M3"

######################
#echo doing ustacks
######################
## m = 3 fixed
## M from 0 to 6, until number of assembled loci
## then n=M+/- 1 until 
#mkdir M4
#cp EukRegion.txt M4/EukRegion.txt
#N=1
#for f in *.fastq; do
#ustacks -f $f  -o ./M4 -i $N -m 3 -M 4 -p 6 -d 
#N=$((N+1))
#done


#######################
echo 'cstacks for regions'
#######################

cstacks -P ./M4 -M EukRegion.txt -n 0 -p 6

##########################
echo sstacks
##########################
sstacks -P ./M4 -M EukRegion.txt -p 6

tsv2bam -P ./M4 -M EukRegion.txt -t 6

gstacks -P ./M4 -M EukRegion.txt -t 6 --details


##########################
echo "population map"
##########################

mkdir M4res
populations -P ./M4 -M EukRegion.txt -p 5 -r 0.8 -O ./M4res --log_fst_comp --verbose --fstats -f p_value -t 6 --structure --genepop --fasta_samples_raw --phylip_var --vcf 

echo "done M4"



######################
#echo doing ustacks
######################
## m = 3 fixed
## M from 0 to 6, until number of assembled loci
## then n=M+/- 1 until 
#mkdir M5
#cp EukRegion.txt M5/EukRegion.txt
#N=1
#for f in *.fastq; do
#ustacks -f $f  -o ./M5 -i $N -m 3 -M 5 -p 6 -d 
#N=$((N+1))
#done


#######################
echo 'cstacks for regions'
#######################

cstacks -P ./M5 -M EukRegion.txt -n 0 -p 6

##########################
echo sstacks
##########################
sstacks -P ./M5 -M EukRegion.txt -p 6

tsv2bam -P ./M5 -M EukRegion.txt -t 6

gstacks -P ./M5 -M EukRegion.txt -t 6 --details


##########################
echo "population map"
##########################

mkdir M5res
populations -P ./M5 -M EukRegion.txt -p 5 -r 0.8 -O ./M5res --log_fst_comp --verbose --fstats -f p_value -t 6 --structure --genepop --fasta_samples_raw --phylip_var --vcf 

echo "done M5"

######################
echo doing ustacks
######################
## m = 3 fixed
## M from 0 to 6, until number of assembled loci
## then n=M+/- 1 until 
mkdir M6
cp EukRegion.txt M6/EukRegion.txt
N=1
for f in *.fastq; do
ustacks -f $f  -o ./M6 -i $N -m 3 -M 5 -p 6 -d 
N=$((N+1))
done


#######################
echo 'cstacks for regions'
#######################

cstacks -P ./M6 -M EukRegion.txt -n 0 -p 6

##########################
echo sstacks
##########################
sstacks -P ./M6 -M EukRegion.txt -p 6

tsv2bam -P ./M6 -M EukRegion.txt -t 6

gstacks -P ./M6 -M EukRegion.txt -t 6 --details


##########################
echo "population map"
##########################

mkdir M6res
populations -P ./M6 -M EukRegion.txt -p 5 -r 0.8 -O ./M6res --log_fst_comp --verbose --fstats -f p_value -t 6 --structure --genepop --fasta_samples_raw --phylip_var --vcf 

echo "done M6"

#echo DONE ALL
