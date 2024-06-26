% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exposomex.R
\name{TidyStatDesc}
\alias{TidyStatDesc}
\title{Tidy data for StatDesc module}
\usage{
TidyStatDesc(PID = PID)
}
\arguments{
\item{PID}{chr. Program ID. It must be the same with the PID generated by
InitStatDesc}

\item{OutPath}{chr. Output file directory, e.g. "D:/test". It should be noted that the slash symbol is "/", not "\".
If "default", the current working directory will be set.}
}
\value{
An R6 class object containing the input data and vocabulary file.
}
\description{
Tidy data file for StatDesc module
}
\details{
TidyStatDesc function resembles several tidy steps for data pre-treatment
before executing other functions in StatDesc module, including deleting vars with
low variance and deleting missing values.
}
\examples{
res <- InitStatDesc()
   res1 <- LoadStatDesc(PID = res$PID, UseExample = "example#1", DataPath = NULL,
   VocaPath = NULL)
   res2 <- TidyStatDesc(PID = res$PID)
   FuncExit(PID = res$PID)
}
\author{
Yanqiu Feng, Bin Wang(corresponding author)
}
