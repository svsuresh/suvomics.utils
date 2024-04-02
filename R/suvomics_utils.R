#' SUVOMICS R utilities
#'
#' @return loaded packages
#' @export
#' @importFrom utils sessionInfo
#' @examples
#' loaded_pkgs()

loaded_pkgs <- function() {
    sapply(sessionInfo()$otherPkgs, "[", c("Package","Version")) |>
        t() |>
        as.data.frame()
}

