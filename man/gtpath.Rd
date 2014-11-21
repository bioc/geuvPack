\name{gtpath}
\alias{gtpath}

\title{
generate path for a VCF file for 1000 genomes genotypes
}
\description{
generate path for a VCF file for 1000 genomes genotypes
}
\usage{
gtpath(chrdigit, useS3=TRUE, tmplate)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{chrdigit}{
suffix to 'chr' to get the chromosome id
}
  \item{useS3}{
logical, if TRUE, returns URL of an Amazon S3 bucket-resident
1000 genomes VCF
}
  \item{tmplate}{character string, used only if \code{useS3} is \code{FALSE}.
The substring \code{"\%\%N\%\%"} will be replaced by value of \code{chrdigit}
}
}
\details{
 A subset of samples in GEUVADIS have genotypes recorded in 1000 genomes.
This function creates the URL for the VCF corresponding to a
chromosome.  \code{\link[GGtools]{cisAssoc}} can operate
on these genotypes.

}
\value{
character string
}
\examples{
 gtpath(1)
 gtpath(1, FALSE, "/tmp/my\%\%N\%\%.vcf.gz")
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ data }
