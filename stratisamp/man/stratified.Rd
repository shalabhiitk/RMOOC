\name{stratified}
\alias{stratified}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{stratisamp
%%  ~~function to do ... ~~
}
\description{Sample library containing the stratified function
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
stratified(df, group, size)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{df}{
%%     ~~Describe \code{df} here~~
}
  \item{group}{
%%     ~~Describe \code{group} here~~
}
  \item{size}{
%%     ~~Describe \code{size} here~~
}
}
\details{stratified method originally written by mrdwab on github.
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{shalabhiitk (Shalabh), oddlyspaced (Hardik Srivastava)
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
##---- Should be DIRECTLY executable !! ----
##-- ==>  Define data, use random,
##--	or do  help(data=index)  for the standard data sets.

## The function is currently defined as
function (df, group, size) 
{
    require(sampling)
    temp = df[order(df[group]), ]
    if (size < 1) {
        size = ceiling(table(temp[group]) * size)
    }
    else if (size >= 1) {
        size = rep(size, times = length(table(temp[group])))
    }
    strat = strata(temp, stratanames = names(temp[group]), size = size, 
        method = "srswor")
    (dsample = getdata(temp, strat))
  }
}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
