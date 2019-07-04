context("testing")


test_that("read_fasta_f", {
  r_f_f <- read_fasta_f(system.file(package = "ReadFastaKmers", "test.fasta"))

  expect_equal(class(r_f_f[[1]]), "list")
  expect_length(r_f_f, 15)
  expect_s3_class(r_f_f, "fasta_sequence")


})


test_that("kmer", {
  r_f_f <- read_fasta_f(system.file(package = "ReadFastaKmers", "test.fasta"))
  k_mer <- kmer(r_f_f, 6)

  expect_length(k_mer, 15)
  expect_s3_class(k_mer, "kmers")

})
