#' @title Read fasta
#'
#' @name read_fasta_f
#' @description  Reads fasta file.
#' @param x A \code{fasta} file.
#' @examples
#' read_fasta_f(system.file(package = "ReadFastaKmers", "test.fasta"))
#' @return A \code{list} of sequences and their names.
#' @export


# Function
read_fasta_f <- function(x) {

  fasta <- readLines(x)

  desc <- grep(">", fasta)
  # data frame with description, from to sequence
  sq <- data.frame(desc = desc, from = desc + 1, to = c((desc - 1)[-1], length(fasta)))

  fasta_df <- lapply(1:length(desc), function(i){
    f_name <- gsub(">", "", fasta[desc[i]])
    f_seq <- paste(fasta[sq[["from"]][i]:sq[["to"]][i]], collapse = "")
    f_fasta_df <- list(sequence_name = f_name, sequence = f_seq)
    print(f_fasta_df)
})
  class(fasta_df) <- "fasta_sequence"
  fasta_df
}
