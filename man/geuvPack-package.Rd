\name{geuvPack-package}
\alias{geuvPack-package}
\alias{geuvPack}
\alias{hasout}
\alias{protco}
\docType{package}
\title{
summarized experiment with expression data from GEUVADIS
}
\description{
FPKM from GEUVADIS, annotated to gencode regions

could include more things like miRNA read counts
 
protco and hasout are convenience vectors enumerating
protein coding features and features that appear to
have outlying values.  The outlier condition for gene
g is (sd(x)/mad(x)) > 2.
}
\details{
\tabular{ll}{
Package: \tab geuvPack\cr
Version: \tab 0.0.0\cr
Suggests: \tab \cr
Depends: \tab GenomicRanges\cr
License: \tab Private\cr
LazyLoad: \tab yes\cr
Built: \tab R 3.1.1; ; 2014-08-22 17:12:50 UTC; unix\cr
}

gtpath function will get 1000 genomes genotype VCF from Amazon S3;
modify if you have local VCF
}
\author{
VJ Carey <stvjc@channing.harvard.edu>

Maintainer: VJ Carey <stvjc@channing.harvard.edu>
}
%\references{
%}
\keyword{ package }
%\seealso{
%}
%\examples{
%}
