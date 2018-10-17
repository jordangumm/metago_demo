# METAGO DEMO

## 1. Install Metago
> follow instructions on the [metago repo](https://github.com/jordangumm/metago)

*OR*

> if logged into flux, source pre-installed metago dependencies

`$source /nfs/turbo/lsa-duhaimem/devel/gumm/workflows/metaGO/dependencies/miniconda/bin/activate`

## 2. Download Metago Demo
`$git clone https://github.com/jordangumm/metago_demo.git`

## 3. Build Metago Demo Simulated Metagenome
`$cd metago_demo && ./build`

## 4. Quality Control
`$metago -o \<path_to_metago_demo\>/output/01_QC qc --sample \<path_to_metago_demo\>/genomes/final`

## 5. Assembly
`$metago -o \<path_to_metago_demo\>/output/02_ASSEMBLY assembly --sample \<path_to_metago_demo\>/output/01_QC/final`

## 6. Binning
`$metago -o \<path_to_metago_demo\>/output/03_BINNING binning -c \<path_to_metago_demo\>/output/02_ASSEMBLY/final/assembly/final.contigs.fa -r \<path_to_metago_demo\>/output/01_QC/final/final.fastq`

## 8. Contig Mapping

`$metago -o \<path_to_metago_demo\>/output/05_MAPPING/phiX174 mapping --sample \<path_to_metago_demo\>/output/02_ASSEMBLY/final/assembly/final.contigs.fa --paired --visualize -r \<path_to_metago_demo\>/genomes/original/phiX174_whole_genome_sequence.fasta`

`$metago -o \<path_to_metago_demo\>/output/05_MAPPING/marinobacter mapping --sample \<path_to_metago_demo\>/output/02_ASSEMBLY/final/assembly/final.contigs.fa --paired --visualize -r \<path_to_metago_demo\>/genomes/original/Marinobacter_aquaeolei_GenBank_CP000514.1.fasta` 

`$metago -o \<path_to_metago_demo\>/output/05_MAPPING/LEM01 mapping --sample \<path_to_metago_demo\>/output/02_ASSEMBLY/final/assembly/final.contigs.fa --paired --visualize -r \<path_to_metago_demo\>/genomes/original/LakeErie_Microcystis_virus_nucleotide_sequence.fasta` 

## 7. VirSorter
`metago -o \<path_to_metago_demo\>/output/04_VIRSORTER virsorter --fasta \<path_to_metago_demo\>/output/02_ASSEMBLY/final/assembly/final.contigs.fa`


## 7. VirSorter Mapping
`$metago -o \<path_to_metago_demo\>/output/05_MAPPING/LEM01_VIRSORTER mapping --sample \<path_to_metago_demo\>/output/04_VIRSORTER/virsorter_output/Predicted_viral_sequences/VIRSorter_cat-2.fasta --visualize -r \<path_to_metago_demo\>/genomes/original/LakeErie_Microcystis_virus_nucleotide_sequence.fasta`
 
`$metago -o \<path_to_metago_demo\>/output/05_MAPPING/phiX174_VIRSORTER mapping --sample \<path_to_metago_demo\>/output/04_VIRSORTER/virsorter_output/Predicted_viral_sequences/VIRSorter_cat-2.fasta --visualize -r \<path_to_metago_demo\>/genomes/original/phiX174_whole_genome_sequence.fasta`
