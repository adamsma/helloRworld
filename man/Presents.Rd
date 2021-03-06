% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/presents.R
\name{Presents}
\alias{Presents}
\title{Hello and Presents}
\usage{
Presents()
}
\value{
Silently returns the current system date as returned by \code{Sys.Data()}
}
\description{
Prints a more personalized message and returns the present of
a random subset of the mtcars dataset.
}
\details{
The name used is by default the system variable \code{username}.
Alternatively, a name can be set by specifying the option
\code{helloRworld.user}. If this option is not set, a more generic,
though still slightly more personal, "User" is used.
}
\examples{
Presents()

}
