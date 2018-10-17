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

## 4. Run Quality Control
`metago -o \<path_to_metago_demo\>/output/01_QC qc --sample \<path_to_metago_demo\>/genomes/final`
