% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Core.R
\name{baseTheme}
\alias{baseTheme}
\title{Standard ggplot settings}
\usage{
baseTheme(sizing = c("figure", "window"))
}
\arguments{
\item{sizing}{defines the style and sizing of the theme. One of 
\code{c("figure", "window")} where \code{sizing="figure"} is appropriately
sized for pdf export at 7 to 7.5 inch width, and \code{sizing="window"}
is sized for an interactive session.}
}
\value{
A ggplot2 object.
}
\description{
\code{baseTheme} defines common ggplot theme settings for plotting.
}
\seealso{
\link[ggplot2]{theme}.
}
