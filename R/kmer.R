#' @title Create k-mers
#'
#' @name kmer
#' @description  Creates k-mers from fasta file.
#' @param x A \code{list} of sequences created by
#' @param k A length of \code{k-mers}.
#' @examples
#' kmer(read_fasta_f(system.file(package = "ReadFastaKmers", "test.fasta")), 5)
#' @return A \code{list} of k-mers.
#' @export

kmer <- function(x, k){

  kmer_list <- lapply(x, function(i){
    k_seq <- strsplit(i[["sequence"]], "")[[1]]
    #k-mer
    kmer_index <- lapply(1:(length(k_seq) - k), function(ii){
      1L:k + ii
    })
    # browser()
    lapply(kmer_index, function(iii){
      k_seq[iii]
    })
  })
  class(kmer_list) <- "kmers"
  kmer_list
  names(kmer_list) <- lapply(x, function(x) x[["sequence_name"]])
  kmer_list
}

