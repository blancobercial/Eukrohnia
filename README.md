# Eukrohnia
Scripts for ddRAD processing from the manuscript Pathways of Pelagic Connectivity: *Eukrohnia hamata* (Chaetognatha) in the Arctic Ocean

Haley M. DeHart, Leocadio Blanco-Bercial, Mollie Passacantando, Jennifer M. Questel, and Ann Bucklin.

Please cite the manuscript if using these tools!

**Scripts included in this repositorty**

Demult_dedup.sh contains the settings used for deduplicate the files and removal of PCR duplicates follwoing Schweyen et al. 2014.

STACKS choosing M and choosing N are scripts to run M 1 to M6 and n1 to n3 on the dataset analyzed.

Multiple_FST_structure_populations.sh runs STACKs populations 1000 times, to create the 100 random structure output files and editing them to leave them ready to load in stucture. Also runs 1000 calculations of F statistics based in 1000 random combinations of SNPs from the dataset. See details in the script and in the manuscript.




