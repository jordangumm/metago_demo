cat genomes/* > combined_genomes.fasta
randomreads.sh -Xmx1g ref=combined_genomes.fasta out=reads.fq.gz coverage=2 length=150 paired 
chmod 770 reads.fq.gz
