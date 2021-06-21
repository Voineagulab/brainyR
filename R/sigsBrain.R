#' Dataframe of gene expression for purified brain cell-types as collated and benchmarked in Sutton et al. (2021).
#' Rows are Ensembl Gene IDs, while columns are cell-types. The signatures are as follows, with full descriptions and recommendations for use in our publication
#'
#'
#'
#' @format A list of lists with 10 levels corresponding to the different datasets with purified brain gene expression
#' \describe{
#'   \item{CA}{single-nucleus RNA-sequencing of post-mortem human from the Human Cell Atlas}
#'   \item{F5}{cultured cells from the FANTOM5 consortium. Contains only Neurons and Astrocytes}
#'   \item{IP}{immunopurified whole-cells from the human cortex from Zhang et al., 2016}
#'   \item{LK}{single-nucleus RNA-sequencing of post-mortem human tissue from Lake et al., 2018. Does not contain Endothelia}
#'   \item{MM}{immunopurified whole-cells from the mouse cortex from Zhang et al., 2014}
#'   \item{SC}{single-cell RNA-sequencing from the freshly resected human cortical tissue from Darmanis et al., 2015}
#' }
#' @usage data(sigsBrain)
"sigsBrain"
