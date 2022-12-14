% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exmeta.R
\name{MetaEffect}
\alias{MetaEffect}
\title{Pool Effect Value}
\usage{
MetaEffect(PID, OutPath = "default", CID = "default", DID = "default")
}
\arguments{
\item{PID}{chr. Program ID. It must be the same with the PID generated by InitMeta.}

\item{OutPath}{chr. Output file directory, e.g. "D:/output". If "default", the current working directory will be set. It should be noted that the slash symbol is "/", not "\".}

\item{CID}{chr. "default" or a chemical ID character (separate different values by ","). If "default", the function will use the Chemical_ID values in the file loaded by LoadMeta. If a character (separate different values by ","), the function will use the chemical ID in the character instead. Chemical_ID refers to the target chemical ID which can be inchikey (eg. JIAARYAFYJHUJI-UHFFFAOYSA-L ), cas.rn (eg. 7784-42-1) or our EXC ID (eg. EX:C01631).}

\item{DID}{chr. "default" or a disease ID character (separate different values by ","). If "default", the function will use the Disease_ID values in the file loaded by LoadMeta. If a character (separate different values by ","), the function will use the disease ID in the character instead. Disease_ID refers to the target disease ID which can be MESH ID (format like MESH:D006973), OMIM ID (format like OMIM:182940) or our EXD ID (eg. EX:D16243)}
}
\value{
A list object containing forest plots.
}
\description{
Pool effect value in our meta database besed on chemical ID and disease ID
}
\details{
MetaEffect provides the functions of effect value pooling. In the publishd papers, what is the effect value between X and Y? This questions can be solved by MetaEffect function. It can provide the combined results of fixed effect model and random effect model. (It can only search the papers available in ExpoMeta database DB_Meta)
Please attention, PID must be got from the return result of InitMeta().
MetaEffect can only run successfully after successfully running InitMeta and LoadMeta functions.
}
\examples{
res <- InitMeta()
   res1 <- LoadMeta(PID = res$PID,
   UseExample = "example#1",
   DataPath = NULL)
   res2 <- MetaEffect(PID=res$PID,
   OutPath = "default",
   CID = "default",
   DID = "default")
}
\author{
Weinan Lin, Bin Wang (corresponding author)
}
