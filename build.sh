mkdir genomes/intermediate
mkdir genomes/final
cat genomes/original/* > genomes/intermediate/combined_genomes.fasta
randomreads.sh -Xmx1000m ref=genomes/intermediate/combined_genomes.fasta out1=genomes/final/Metagenome_1.fastq.gz out2=genomes/final/Metagenome_2.fastq.gz illuminanames=t coverage=2 length=150 paired=t interleaved=f


