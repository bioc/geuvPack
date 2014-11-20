\name{gtpath}
\alias{gtpath}

\title{
generate path for a VCF file for 1000 genomes genotypes
}
\description{
generate path for a VCF file for 1000 genomes genotypes
}
\usage{
gtpath(chrdigit)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{chrdigit}{
suffix to 'chr' to get the chromosome id
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
%\references{
%}
%\author{
%}
%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
 gtpath(1)
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ data }
