

gtpath = function (chrdigit, useS3 = TRUE, tmplate)
{
    if (is.numeric(chrdigit)) chrdigit=as.integer(chrdigit)
    if (is(chrdigit, "integer")) chrdigit=paste0("chr", chrdigit)
    if (length(grep("chr", chrdigit))<1) warning("probably need 'chr' in input string")
    if (useS3) {
        tmplate = "http://1000genomes.s3.amazonaws.com/release/20130502/ALL.%%N%%.phase3_shapeit2_mvncall_integrated_v5a.20130502.genotypes.vcf.gz"
        if (length(grep("X|Y", chrdigit))>0) 
            tmplate = "http://1000genomes.s3.amazonaws.com/release/20130502/ALL.%%N%%.phase3_integrated_v1b.20130502.genotypes.vcf.gz"
        }
    else if (missing(tmplate)) stop("must supply tmplate with %%N%% for substitution if useS3 is false.")
    gsub("%%N%%", chrdigit, tmplate)
}

