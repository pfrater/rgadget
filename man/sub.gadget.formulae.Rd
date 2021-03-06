% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/gadgetformulae.R
\name{sub.gadget.formulae}
\alias{sub.gadget.formulae}
\title{Replace variables in formulae}
\usage{
sub.gadget.formulae(ex, replacements,
  year = stop("Specify year to use timevariable"),
  step = stop("Specify step to use timevariable"))
}
\arguments{
\item{ex}{An unevaluated R expression or the result of parse.gadget.formulae, e.g. quote(2 + log(moo - 1))}

\item{replacements}{A list of variable names to either: a TimeVariable file, replacement gadget/R formulae, or value}

\item{year}{If using TimeVariable files, specify the year to pull out of file}

\item{step}{If using TimeVariable files, specify the step to pull out of file}
}
\value{
An R expression representing the gadget formulae, which could be run with \code{eval(.., list(moo = 3))}
}
\examples{
sub.gadget.formulae(quote(log(moo) + oink + baa), list(moo = "#fish", oink = quote(2 + 2), baa = 5))
# ==> log(fish) + (2 + 2) + 5

\dontrun{
tv <- read.gadget.file('.', 'timevariable', file_type = 'timevariable')
sub.gadget.formulae(quote(log(moo) + oink), list(moo = tv), year = 1995, step = 1)
# ==> log(grow1995) + oink
}
}
