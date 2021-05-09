.onAttach <- function(...) {
  diveRpkgs <- diveRcore()
  needed <- diveRpkgs[!is_attached(diveRpkgs)]
  if (length(needed) == 0)
    return()

  diveR_attach()
}

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}
