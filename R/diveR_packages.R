#' List all packages in diveR
#'
#' @param include_self Include diveR in the list?
#' @export
#' @examples
#' diveR_packages()
diveR_packages <- function(include_self = TRUE) {
    raw <- utils::packageDescription("diveR")$Imports
    imports <- strsplit(raw, ",")[[1]]
    parsed <- gsub("^\\s+|\\s+$", "", imports)
    names <- vapply(strsplit(parsed, "\\s+"), "[[", 1, FUN.VALUE = character(1))

    if (include_self) {
        names <- c(names, "diveR")
    }

    names
}
