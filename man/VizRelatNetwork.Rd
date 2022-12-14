% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/exviz.R
\name{VizRelatNetwork}
\alias{VizRelatNetwork}
\title{Plot relationship network}
\usage{
VizRelatNetwork(PID,OutPath="default",VarsY,VarsC="all.c",VarsX="all.x",
    Family="gaussian",Layout="force-directed",CutOff=0.8,Brightness="light",
    Palette="default1")
}
\arguments{
\item{PID}{chr. Program ID. It must be the same with the PID generated by InitViz.}

\item{OutPath}{chr. Output file directory. e.g. "D:/test". It should be noted
that the slash symbol is "/", not "\". If "default", the current working
directory will be set.}

\item{VarsY}{chr. Specifying the dependent variables(e.g."Y2").}

\item{VarsC}{chr. Specifying the covariate variable.Available options include:
"all.c", all covariate variables;
or input a character string specifying the variables,separated by comma ","
without space(e.g."C1,C2").}

\item{VarsX}{chr. Specifying the independent variables.Available options include:
"all.x", all independent variables;
or input a character string specifying the variables,separated by comma ","
without space(e.g."X4,X5,X6,X7,X8,X9,X10").}

\item{Family}{chr. The link function for the regression model according the data
type of outcomes,including "gaussian" for continuous variable, "binomial" for
binary variable,and "poisson" for counting variable. Notice that the family are
determined by data type of an outcome, or the plot can not be visualized.The
default option is "gaussian".}

\item{Layout}{chr. Visualization layout. Available options include "force-directed"
and "degree-circle".}

\item{CutOff}{num. Partial outcomes to visualize which is determined by correlation
coefficient r. The range must between 0 and 1.}

\item{Brightness}{chr. Visualization brightness. Available options include "light"
and "dark".}

\item{Palette}{chr. Visualization palette. Available options include "default1",
"default2" and "Journal". The "Journal" option provides several journal preference
styles including cell, nature, science, lancet, nejm, and jama.}
}
\value{
A ggplot plot which can be further modified using the ggplot2 package.
(1) "light_default1": the visualization result;
}
\description{
Visualize data via network plot.
}
\details{
The network plot is used to visualize the relationship between the input
variables by using ggraph package.
}
\examples{
res = InitViz()
    res1 = LoadViz(PID = res$PID, UseExample = "example#1")
    res2 = VizRelatNetwork(PID=res$PID,OutPath="default",VarsY="Y2",VarsC="all.c",
    VarsX="all.x",Family="gaussian",Layout="force-directed",CutOff=0.8,
    Brightness="light",Palette="default1")
}
\author{
Ning Gao,Bin Wang(corresponding author)
}
