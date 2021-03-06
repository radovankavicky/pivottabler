% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/PivotBatch.R
\docType{class}
\name{PivotBatch}
\alias{PivotBatch}
\title{A class that represents a batch calculation.}
\format{\code{\link{R6Class}} object.}
\usage{
PivotBatch
}
\value{
Object of \code{\link{R6Class}} with properties and methods that help
  to (do xyz).
}
\description{
The PivotBatch class represents one combination of variables and calculations
that are needed when calculating the values of cells in a pivot table.
}
\section{Fields}{

\describe{
\item{\code{parentPivot}}{Owning pivot table.}

\item{\code{batchId}}{A unique integer identifier for this batch.}

\item{\code{compatibleCount}}{The number of pivot cell calculations that this batch supports.}

\item{\code{evaluated}}{TRUE if this batch has been evaluated.}

\item{\code{results}}{The results (a data frame) of the evaluation of this batch.}

\item{\code{asString}}{A text description of this batch.}
}}

\section{Methods}{

\describe{
  \item{Documentation}{For more complete explanations and examples please see
  the extensive vignettes supplied with this package.}
  \item{\code{new(...)}}{Create a new Pivot Batch.}

  \item{\code{isCompatible(dataName=NULL, variableNames=NULL)}}{Checks
  whether the specified data name and combination of variable names are
  compatible with this batch.}
  \item{\code{addCompatible(values=NULL, calculationName=NULL,
  calculationGroupName=NULL)}}{Adds another cell calculation to this batch.}
  \item{\code{getCalculationInternalName(calculationName=NULL,
  calculationGroupName=NULL)}}{Find the internal name for this calculation.}
  \item{\code{evaluateBatch()}}{Evaluate this batch.}
  \item{\code{getSummaryValueFromBatch(filters=NULL, calculationName=NULL,
  calculationGroupName=NULL)}}{Retrieve a value from a batch that has already
  been evaluated.}
}
}

\examples{
# This class should only be created by the pivot table.
# It is not intended to be created outside of the pivot table.
}
\keyword{datasets}
