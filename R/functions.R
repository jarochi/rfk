#' @title Prints fasta sequence
#'
#' @name print.fasta_sequence
#' @param x object after read_fasta_f
#' @param ... other args
#' @rdname print.fasta_sequence
#
print.fasta_sequence <- function(x, ...){
  lapply(x, function(i){
    name <- i[["sequence_name"]][[1]]
    seq_l <- length(unlist(strsplit(i[["sequence"]], "")))[[1]]
    info <- paste("Sequence", name, "has", seq_l, "nucleotides.")
    info
  })
}



# print.kmer <- function(x, ...){
#
# }

#' @title Summary fasta sequence
#'
#' @name summary.fasta_sequence
#' @param object object after read_fasta_f()
#' @param ... other args
#' @rdname summary.fasta_sequence
#
summary.fasta_sequence <- function(object, ...){
  lapply(object, function(i){
    name <- i[["sequence_name"]][[1]]
    seq_l <- length(unlist(strsplit(i[["sequence"]], "")))[[1]]
    info <- paste("Sequence", name, "has", seq_l, "nucleotides.")
    info
  })
}



#' @title Summary kmer
#'
#' @name summary.kmer
#' @param object object after kmer()
#' @param ... other args
#' @rdname summary.kmer
#
summary.kmer <- function(object, ...){
  lapply(object, function(i){
    kmer_l <- length(i)
    kmer_n <- names(i)[[1]]
    info <- paste("Sequence", kmer_n, "has", kmer_l, "kmers.")
    info
  })
}
