## Copied from file of the same name in tidyverse and modified for diveR

diveRcore <- function() {
  c("loon", "loon.data", "ggmulti",
    "loon.ggplot", "zenplots", "loon.shiny",
    "loon.tourr")
  }

presentationPackages  <- function() {
  c("cli", "crayon", "rstudioapi")
}

core_unloaded <- function() {
  diveRpkgs <- diveRcore()
  search <- paste0("package:", diveRpkgs)
  diveRpkgs[!search %in% search()]
}

# Attach the package from the same package library it was
# loaded from before.
same_library <- function(pkg) {
  loc <- if (pkg %in% loadedNamespaces()) {
    dirname(getNamespaceInfo(pkg, "path"))
    }
  do.call(
    "library",
    list(pkg,
         lib.loc = loc,
         character.only = TRUE,
         warn.conflicts = FALSE)
  )
}

diveR_message <- function(pkgs = diveRcore()) {
  l_web_msg <- "To learn more about any diveR package, see l_web()."
  if (length(pkgs) > 0) {
    eg_msg <- paste0("\n", "E.g.")
    pkg_egs <- paste0("\t",
                      "l_web(package = \"",
                      pkgs,
                      "\")",
                      collapse = "\n")
    l_web_msg <- paste0(l_web_msg, eg_msg, pkg_egs, "\n")
  }
  l_web_msg
}

diveR_attach <- function() {
  to_load <- core_unloaded()
  if (length(to_load) == 0)
    return(invisible())

  msg(
    cli::rule(
      left = crayon::bold("Attaching packages"),
      right = paste0("diveR ", package_version("diveR"))
    ),
    startup = TRUE
  )

  versions <- vapply(to_load, package_version, character(1))
  packages <- paste0(
    crayon::green(cli::symbol$tick), " ", crayon::blue(format(to_load)), " ",
    crayon::col_align(versions, max(crayon::col_nchar(versions)))
  )

  if (length(packages) %% 2 == 1) {
    packages <- append(packages, "")
  }
  col1 <- seq_len(length(packages) / 2)
  info <- paste0(packages[col1], "     ", packages[-col1])

  msg(paste(info, collapse = "\n"), startup = TRUE)

  msg(diveR_message(), startup = TRUE)

  suppressPackageStartupMessages(
    lapply(to_load, same_library)
  )

  invisible()
}

package_version <- function(x) {
  version <- as.character(unclass(utils::packageVersion(x))[[1]])

  if (length(version) > 3) {
    version[4:length(version)] <- crayon::red(as.character(version[4:length(version)]))
  }
  paste0(version, collapse = ".")
}
