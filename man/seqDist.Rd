% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Sequence.R
\name{seqDist}
\alias{seqDist}
\title{Calculate distance between two sequences}
\usage{
seqDist(seq1, seq2, dist_mat = getDNAMatrix())
}
\arguments{
\item{seq1}{character string containing a DNA sequence.}

\item{seq2}{character string containing a DNA sequence.}

\item{dist_mat}{Character distance matrix. Defaults to a Hamming distance 
matrix returned by \link{getDNAMatrix}. If gap 
characters, \code{c("-", ".")}, are assigned a value of -1 
in \code{dist_mat} then contiguous gaps of any run length,
which are not present in both sequences, will be counted as a 
distance of 1. Meaning, indels of any length will increase
the sequence distance by 1. Gap values other than -1 will 
return a distance that does not consider indels as a special case.}
}
\value{
Numerical distance between \code{seq1} and \code{seq2}.
}
\description{
\code{seqDist} calculates the distance between two DNA sequences.
}
\examples{
# Ungapped examples
seqDist("ATGGC", "ATGGG")
seqDist("ATGGC", "ATG??")

# Gaps will be treated as Ns with a gap=0 distance matrix
seqDist("ATGGC", "AT--C", dist_mat=getDNAMatrix(gap=0))

# Gaps will be treated as universally non-matching characters with gap=1
seqDist("ATGGC", "AT--C", dist_mat=getDNAMatrix(gap=1))

# Gaps of any length will be treated as single mismatches with a gap=-1 distance matrix
seqDist("ATGGC", "AT--C", dist_mat=getDNAMatrix(gap=-1))

# Gaps of equivalent run lengths are not counted as gaps
seqDist("ATG-C", "ATG-C", dist_mat=getDNAMatrix(gap=-1))

# Overlapping runs of gap characters are counted as a single gap
seqDist("ATG-C", "AT--C", dist_mat=getDNAMatrix(gap=-1))
seqDist("A-GGC", "AT--C", dist_mat=getDNAMatrix(gap=-1))
seqDist("AT--C", "AT--C", dist_mat=getDNAMatrix(gap=-1))

# Discontiguous runs of gap characters each count as separate gaps
seqDist("-TGGC", "AT--C", dist_mat=getDNAMatrix(gap=-1))

}
\seealso{
Nucleotide distance matrix may be built with 
          \link{getDNAMatrix}. Amino acid distance matrix may be built
          with \link{getAAMatrix}. Used by \link{pairwiseDist} for generating
          distance matrices. See \link{seqEqual} for testing sequence equivalence.
}
