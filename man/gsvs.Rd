\name{gsvs}
\alias{gsvs}
\docType{data}
\title{
output of SVA on geuvadis FPKM
}
\description{
output of SVA on geuvadis FPKM
}
\usage{data("gsvs")}
\format{
  The format is:
List of 4
 $ sv       : num [1:462, 1:6] -0.01355 0.00506 0.5762 -0.00857 -0.01388 ...
 $ pprob.gam: num [1:23722] 0.741 0.996 0.829 0.754 1 ...
 $ pprob.b  : num [1:23722] 0.0599 0.9921 0.3887 0.4483 0.8637 ...
 $ n.sv     : num 6
}
\details{
see the example for information on generating the sv
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
}

\keyword{datasets}
