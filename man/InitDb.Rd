% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exdb.R
\name{InitDb}
\alias{InitDb}
\title{Initialize ExpoDB module}
\usage{
InitDb()
}
\value{
An R6 class object.
}
\description{
Initialize ExpoDB module analysis. It can generate an R6 class object.
}
\details{
ExpoDB module is designed as a convenient tool to explore the data,
as well as facilitating to find the biological relationship between exposure
and diseases from the perspective of bioinformatics. This module adopts
the most frequently-used and authoritative databases,
e.g., T3DB, CTD, ToxCast, StringDB, STITCH, KEGG, and GO.
}
\examples{
res <- InitDb()
   FuncExit(PID = res$PID)
}
\author{
Bin Wang (corresponding author)
}
