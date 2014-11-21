

gtpath = function (chrdigit, useS3 = TRUE, tmplate)
{
    if (useS3)
        tmplate = "http://1000genomes.s3.amazonaws.com/release/20110521/ALL.chr%%N%%.phase1_release_v3.20101123.snps_indels_svs.genotypes.vcf.gz"
    else if (missing(tmplate)) stop("must supply tmplate with %%N%% for substitution if useS3 is false.")
    gsub("%%N%%", chrdigit, tmplate)
}

