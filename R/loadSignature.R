#' Load a specific brain dataset
#'
#' This function loads a brain signature from given datasets and for the given cell type.
#' It goes through the sigsBrain.rda file and returns the relevant signatures.
#' If signature is not in the given .rda file, it will return an error message.
#'
#'
#' @param dataset dataset of interest. Options include: F5, IP, SC, MM, LK, CA
#' @param cell_types cell types of interest. Options include: Neurons, Astrocytes, Oligodendrocytes, Microglia, Endothelia
#' @return Object with options from dataset and cell_type
#' @import utils
#' @import usethis
#' @importFrom  utils data
#' @importFrom usethis use_package
#' @export







loadSignature <- function (dataset, cell_types)

{
  usethis::use_package("utils")
  data("sigsBrain", evir=environment())
  suppressWarnings(if (cell_types == "all") cell_types = names(sigsBrain[[dataset]]))
  error_mssg_dataset <- paste("ERROR: please use one of the valid dataset options:", toString (names(sigsBrain)))
  error_mssg_ct <- paste("ERROR: please use one of the valid cell type options for", dataset, ":", toString (names(sigsBrain[[dataset]])))

  if(dataset%in%names(sigsBrain))
    {
    message (paste("Loading datset:", dataset))
    if ( length(intersect(cell_types, names(sigsBrain[[dataset]]))) == length(cell_types))
    {message ("Loading cell type data")
      sig<- sigsBrain[[dataset]][, cell_types]} else message(error_mssg_ct)
    } else (message(error_mssg_dataset))
return(sig)
}

if(getRversion() >= "2.15.1") utils::globalVariables(c("sigsBrain"))
