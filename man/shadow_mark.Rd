% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/shadow-stamp.R
\name{shadow_mark}
\alias{shadow_mark}
\title{Show original data as background marks}
\usage{
shadow_mark(past = TRUE, future = FALSE, ..., exclude_layer = NULL)
}
\arguments{
\item{past}{Should raw data from earlier in the animation be shown}

\item{future}{Should raw data from later in the animation be shown}

\item{...}{changes to the shadow data, e.g. \code{alpha = alpha/2} or
\code{colour = 'grey'}}

\item{exclude_layer}{Indexes of layers that should be excluded.}
}
\description{
This shadow lets you show the raw data behind the current frame. Both past
and/or future raw data can be shown and styled as you want.
}
\seealso{
Other shadows: \code{\link{shadow_null}},
  \code{\link{shadow_wake}}
}
\concept{shadows}
