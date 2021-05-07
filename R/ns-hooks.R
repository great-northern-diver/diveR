.onAttach <- function(...) {
  diveRpkgs <- diveRcore()
  needed <- diveRpkgs[!is_attached(diveRpkgs)]
  if (length(needed) == 0)
    return()

  diveR_attach()

 # if (!"package:conflicted" %in% search()) {
 #   x <- tidyverse_conflicts()
 #   msg(tidyverse_conflict_message(x), startup = TRUE)
 # }

}

is_attached <- function(x) {
  paste0("package:", x) %in% search()
}
