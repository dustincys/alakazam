% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Lineage.R
\name{phyloToGraph}
\alias{phyloToGraph}
\title{Convert a tree in ape \code{phylo} format to igraph \code{graph} format.}
\usage{
phyloToGraph(phylo, germline = NULL)
}
\arguments{
\item{phylo}{An ape \code{phylo} object.}

\item{germline}{If specified, places specified tip sequence as the direct 
ancestor of the tree}
}
\value{
A \code{graph} object representing the input tree.
}
\description{
\code{phyloToGraph} converts a tree in \code{phylo} format to and 
\code{graph} format.
}
\details{
Convert from phylo to graph object. Uses the node.label vector to label internal nodes. Nodes 
may rotate but overall topology will remain constant.
}
\examples{
\dontrun{
   library(igraph)
   library(ape)

   #convert to phylo
   phylo = graphToPhylo(graph)
   
   #plot tree using ape
   plot(phylo,show.node.label=TRUE)
   
   #store as newick tree
   write.tree(phylo,file="tree.newick")
   
   #read in tree from newick file
   phylo_r = read.tree("tree.newick")
   
   #convert to igraph
   graph_r = phyloToGraph(phylo_r,germline="Germline")
   
   #plot graph - same as before, possibly rotated
   plot(graph_r,layout=layout_as_tree)
}

}
\references{
\enumerate{
  \item  Hoehn KB, Lunter G, Pybus OG - A Phylogenetic Codon Substitution Model for Antibody 
             Lineages. Genetics 2017 206(1):417-427
             https://doi.org/10.1534/genetics.116.196303 
 \item  Hoehn KB, Vander Heiden JA, Zhou JQ, Lunter G, Pybus OG, Kleinstein SHK - 
             Repertoire-wide phylogenetic models of B cell molecular evolution reveal 
             evolutionary signatures of aging and vaccination. bioRxiv 2019  
             https://doi.org/10.1101/558825 
}
}
