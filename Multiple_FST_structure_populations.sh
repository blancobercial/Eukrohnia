#!/bin/bash
#SBATCH -o PPCESS_%j.out
#this script creates folders for the outfiles, 
#and runs the STACKS populations using a whitelist of SNPs, in which are already selected by MAF. 
#From each tag will pick one random variant each cycle. 
#Then moves the sumstats.tsv to the new folder changing the name of the file to date and time. 
#it does the same for the structure file. THe first 100 loops both files are created, 
#then another 900 iterations are just for fst and derivates. 
#THe pairwise fst for all iterations are going to go to the general outfile created for the whole run, 
#indicated above as process number.
#They are easily selected in excel with regular search tool (or notepad++). 
#Then all structure files are renamed into something more manageable, 
#and the fist line added by stacks removed so they are ready for structure runs. 
#Please cite the original paper!!
#If you find any problem with the script, please contact Leocadio Blanco Bercial (Leocadio_blanco@hotmail.com)


##########################
echo "population map"
##########################
##initial folder for populations results

mkdir PopResults

##folder for the final files

mkdir PopResultsFinal

for i in {1..100}
do

##your populations map, your whitelist (in this case, already filtered by MAF=0.05, so there is no need to indicate it furher in the script; 
#this makes all the calcularions much faster). 
##Files are moved to a new folder and renamed based on the time stamp, so they do not get overwritten

populations -P ./M2 -W white_list.txt -M yourpopulationsmap.txt -O ./PopResults --log_fst_comp --write_random_snp --verbose --fstats -f p_value -t 6 --structure 
mv ./PopResults/populations.structure ./PopResultsfinal/`date +%Y_%m_%d_%H:%M:%S`.structure
mv ./PopResults/populations.sumstats_summary.tsv ./PopResultsfinal/populations.sumstats_summary.`date +%Y_%m_%d_%H:%M:%S`.tsv
#same can be done for other files, e.g. mv ./PopResults/populations.phistats_summary.tsv ./PopResultsFinal/phistats_`date +%Y_%m_%d_%H:%M:%S`.tsv


done

#now just for fst (and fst pairwise that will go to the main outfile of the run)

for i in {1..900}
do

populations -P ./M2 -W white_list.txt -M yourpopulationsmap.txt -O ./PopResults --log_fst_comp --write_random_snp --verbose --fstats -f p_value -t 6
mv ./PopResults/populations.sumstats_summary.tsv ./PopResultsfinal/populations.sumstats_summary.`date +%Y_%m_%d_%H:%M:%S`.tsv

done

echo "done M2n2"

##now we go into the folder with all structure files, rename them to make life easier tracking files back, 
##and since stacks adds a first line that will make structure crash; 
##removing it with sed. You can split the run here - then your output file will contain only populations outfiles.

##cd into the final folder

cd PopResultsFinal

##changing the name to Euk1.structure, Euk2.structure.... Euk100.structure

counter=0
for file in *.structure ; do 
    mv -i "$file" Euk$((counter+1)).structure && ((counter++))
done

##stacks adds a first log line that will make structure crash; removing it with sed. No changes in the names

sed -i '1d' *.structure

echo "done removing first lines"

##After this: Structure does not parallel taks, so it should be run "parallelized by hand". For example
    #for f in Euk*.structure; do 
    #structure -m mainparams -e extraparams -i $f -K 8 -o $f.8.out
    #done
##that would run all structure files one after each other at K=8. You can set one run for each K level. 
##It will take a while, so you might want to make groups of structure files. 
##I am sure there is a way to make this more efficient, and I think there is a R tool to parallelize this. 
