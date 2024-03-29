% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/model_frame.R
\name{model_frame}
\alias{model_frame}
\title{Wrapper for model.frame}
\usage{
model_frame(formula, data, ...)
}
\arguments{
\item{formula}{formula object}

\item{data}{data.frame object}

\item{...}{other parameters to fill in the call}
}
\value{
a data.frame with the variables in \code{formula}
}
\description{
\code{model.frame} returns a data.frame object for use in \code{\link[=lmabc]{lmabc()}} and similar functions.
It reimplements the first few lines of \code{\link[=lm]{lm()}} to properly format the \code{formula} and \code{data} parameters.
If only \code{formula} is passed, all variables must be vectors in the environment.
If \code{formula} and \code{data} are passed, variables are first pulled from \code{data}, then filled from the environment.
}
