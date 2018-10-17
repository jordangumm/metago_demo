mkdir genomes/intermediate
mkdir genomes/final
cat genomes/original/* > genomes/intermediate/combined_genomes.fasta
randomreads.sh -Xmx1g ref=genomes/intermediate/combined_genomes.fasta out=genomes/final/reads.fq.gz coverage=2 length=150 paired 
chmod 770 genomes/final/reads.fq.gz


