\name{geuFPKM}
\alias{geuFPKM}
\alias{gs2p}
\alias{gen2sym}
\alias{gencodeV12}
\alias{gencodeV12GR}
\docType{data}
\title{
Expression data, gene level FPKM, from GEUVADIS
}
\description{
see \code{metadata(geuFPKM)}
}
\usage{data("geuFPKM"); data(gs2p)}
\format{
  geuFPKM: A \link{RangedSummarizedExperiment} object.

  gsvs: A result from sva::sva
 
  gs2p: a character vector with gene symbols as values and gencode identifiers
as names; gen2sym has gencode tags as values and symbols as names

  gencodeV12: a GRanges instance with metadata about V12 gencode genes
}
\details{
FPKM as reported in EBI ArrayExpress E-GEUV-1.  Other quantifications
may be added in future versions of this package.

"500bffeed8e0f770c157e0189e9e50ae" is the output of digest on
the txt.gz file of quantifications from which the assay data in the
geuFPKM \link{RangedSummarizedExperiment} instance is constructed.  This
was extracted at Channing Division of Network Medicine on 13 November 2013,
and verified to be correct for the contents of the URL below on 11 December
2014.

The README file

\url{http://www.ebi.ac.uk/arrayexpress/files/E-GEUV-1/GeuvadisRNASeqAnalysisFiles_README.txt}

has the following remarks

Quantification file set: \cr
- Sample set + sample size : \cr
QC-passed: All QC-passed samples including replicates: 660 (mRNA) or 480 (miRNA) \cr
QC-passed unique: Nonredundant set of unique samples used in most analyses: 462 (mRNA); 452 (miRNA) \cr
- Normalization:  \cr
	None: raw read counts \cr
	Library depth: Read counts scaled by total number of mapped reads (mRNA), or total number reads mapping to miRNAs (miRNA) per sample, then adjusted to the median of the sample set (45M for mRNA, 1.2M for miRNA) \cr
	Library depth and transcript length: RPKM \cr
	Library depth & expressed & PEER: Library depth scaling as above, removal of units with 0 counts in >50% samples, and removal of technical variation by PEER normalization \cr
\cr
\cr
\cr
- November 5, 2013 update: The file GD462.GeneQuantRPKM.50FN.samplename.resk10.norm.txt.gz that had the normalization as above PLUS an additional transformation of each gene's values to standard normal has been replaced by GD462.GeneQuantRPKM.50FN.samplename.resk10.txt.gz \cr

}
\source{
\url{ftp://ftp.ebi.ac.uk/pub/databases/microarray/data/experiment/GEUV/E-GEUV-1/analysis_results/GD462.GeneQuantRPKM.50FN.samplename.resk10.txt.gz}
}
\references{
PMID 24037378
}
\examples{
data(geuFPKM)
geuFPKM
sd(assay(geuFPKM)[1,])
data(gs2p)
gs2p[1:10] # from rowRanges - use with extractBySymbols in gQTLBase
\dontrun{
# this is how the gsvs surrogate variable structure
# was derived
library(sva)
library(geuvPack)
data(geuFPKM)
popm = model.matrix(~popcode, data=colData(geuFPKM))
int = popm[,1,drop=FALSE]
gsvs = sva(assay(geuFPKM), popm, int)
save(gsvs, file="gsvs.rda")
}

## maybe str(geuFPKM) ; plot(geuFPKM) ...
}
\keyword{datasets}
