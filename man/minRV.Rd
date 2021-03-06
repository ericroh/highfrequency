\name{minRV}
\Rdversion{1.1}
\alias{minRV}
\title{
minRV
}
\description{
Function returns the minRV, defined in Andersen et al. (2009).

Let \eqn{r_{t,i}} be a return (with \eqn{i=1,\ldots,M}) in period \eqn{t}.

Then, the minRV is given by
\deqn{
\mbox{minRV}_{t}=\frac{\pi}{\pi - 2}\left(\frac{M}{M-1}\right) \sum_{i=1}^{M-1} \mbox{min}(|r_{t,i}| ,|r_{t,i+1}|)^2
}

}

\usage{
 minRV(rdata,align.by=NULL,align.period=NULL,makeReturns=FALSE,...)
}

\arguments{
  \item{rdata}{a zoo/xts object containing all returns in period t for one asset. }
  \item{align.by}{a string, align the tick data to "seconds"|"minutes"|"hours".}
  \item{align.period}{an integer, align the tick data to this many [seconds|minutes|hours].}  
  \item{makeReturns}{boolean, should be TRUE when rdata contains prices instead of returns. FALSE by   default.} 
  \item{...}{additional arguments.}
}


\value{
numeric
}

\references{ 
Andersen, T. G., D. Dobrev, and E. Schaumburg (2012). Jump-robust volatility estimation using nearest neighbor truncation. Journal of Econometrics, 169 (1), 75-93.
}

\author{ Jonathan Cornelissen and Kris Boudt}
\examples{
 data(sample_tdata); 
 
 minrv = minRV( rdata = sample_tdata$PRICE, align.by ="minutes", 
            align.period =5, makeReturns=TRUE); 
 minrv 
}

\keyword{ volatility}