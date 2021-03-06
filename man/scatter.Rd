% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/scatter.R
\name{scatter}
\alias{assemble}
\alias{assemble.taxa}
\alias{scatter}
\title{Scatter each taxon in a taxondf to a taxon object}
\usage{
scatter(x, ...)

assemble(x, ...)

\method{assemble}{taxa}(x, ...)
}
\arguments{
\item{x}{A taxonomic data.frame}

\item{...}{Further args, ignored for now}
}
\value{
Gives a \code{taxa} object, with each individual component a row from your
data.frame, and of class \code{taxon}
}
\description{
Scatter each taxon in a taxondf to a taxon object
}
\details{
Right now, \code{assemble} may not give back the identical data.frame that one
would pass to \code{scatter}.
}
\examples{
# operating on taxonomic data.frames
df <- data.frame(class=c('Magnoliopsida','Magnoliopsida','Magnoliopsida',
                         'Magnoliopsida','Magnoliopsida','Magnoliopsida'),
         order=c('Asterales','Asterales','Fagales','Poales','Poales','Poales'),
         family=c('Asteraceae','Asteraceae','Fagaceae','Poaceae','Poaceae','Poaceae'),
         genus=c('Helianthus','Helianthus','Quercus','Poa','Festuca','Holodiscus'),
         stringsAsFactors = FALSE)
(df2 <- taxon_df(df))

## scatter each taxon into a taxon class
df2 \%>\% scatter()

## re-assemble
df2
df2 \%>\% scatter()
df2 \%>\% scatter() \%>\% assemble
}

