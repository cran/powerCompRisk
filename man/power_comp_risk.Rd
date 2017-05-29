\name{power.comp.risk}
\alias{power.comp.risk}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
Power Analysis Tool for Joint Testing Hazards with Competing Risks Data.
}

\description{
A power analysis tool for jointly testing the cause-1 cause-specific hazard and the any-cause hazard with competing risks data.}

\usage{
power.comp.risk(alpha, beta, lambda_11, RR, HR_1, HR_all, attrition, r, f, a1)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
\item{alpha}{Type I error}
\item{beta}{Type II error}
\item{lambda_11}{Cause-1 cause-specific hazard in group 1.}
\item{HR_1}{Pre-specified cause-1 cause-specific hazard ratio between groups 1 and 2.}
\item{HR_all}{Pre-specified any-cause hazard ratio between groups 1 and 2.}
\item{RR}{Relative risk of cause-1 failure versus the any-cause failure in group 1.}
\item{r}{Length of patient accrual period.}
\item{f}{Maximum follow-up period.}
\item{attrition}{Attrition rate due to lost to follow-up.}
\item{a1}{Sample allocation proportion for group 1.}

}

%\details{
%%  ~~ If necessary, more details than the description above ~~
%}

\value{
A dataframe with variables \code{Chi2 Joint}, \code{Maximum Joint}, \code{Bonferroni} methods. The first entry is the required number of cause-1 failures and the second entry is the required total number of patients.
}
\references{
Yang, Q., Fung, W.K., Li, G. (2017) Sample size determination for jointly testing a cause-specific hazard and the any-cause hazard in the presence of competing risks. UCLA Department of Biostatistics Technical Report.
}
\author{
Authors: Qing Yang,
Wing K. Fung,
Gang Li

Maintainer: Eric Kawaguchi <erickawaguchi [at] ucla.edu>
}

%\note{
%%  ~~further notes~~
%}

%% ~Make other sections like Warning with \section{Warning }{....} ~

%\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
%}
\examples{
power.comp.risk(alpha = 0.05, beta = 0.2, lambda_11 = 0.3, RR = 0.8,
HR_1 = 1.44, HR_all = 1.33, attrition = 0.1, r = 1,f = 8, a1 = 0.5)
}

% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
%\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
%\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
