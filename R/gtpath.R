

gtpath = function (chrdigit, useS3 = TRUE, tmplate)
{
#    tmplate = "...EBI/GEUVADIS/VCF/GEUVADIS.chr%%N%%.PH1PH2_465.IMPFRQFILT_BIALLELIC_PH.annotv2.genotypes.vcf.gz"
    if(!useS3) stop("you will need to supply template path to relevant genotype data in tmplate; check source for this function")
    if (useS3)
        tmplate = "http://1000genomes.s3.amazonaws.com/release/20110521/ALL.chr%%N%%.phase1_release_v3.20101123.snps_indels_svs.genotypes.vcf.gz"
    gsub("%%N%%", chrdigit, tmplate)
}

