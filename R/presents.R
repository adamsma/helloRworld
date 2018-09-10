#' Generates Random Car Data Set
#'
#' Generates a random subset of the mtcars subset
#'
#' @return
#' Retunrs a random subset (columns and rows) of the the mtcars data
#' @importFrom magrittr %>%
#' @importFrom dplyr select
#' @importFrom dplyr sample_n
#' @noRd
GenData <- function(){

    numCols <- sample(NCOL(mtcars),1)

    mtcars %>%
        select(sample(seq_along(mtcars), numCols)) %>%
        sample_n(sample(NROW(mtcars),1))

}


#' Hello and Presents
#'
#' Prints a more personalized message and returns the present of
#' a random subset of the mtcars dataset.
#'
#' The name used is by default the system variable \code{username}.
#' Alternatively, a name can be set by specifying the option
#' \code{helloRworld.user}. If this option is not set, a more generic,
#' though still slightly more personal, "User" is used.
#'
#' @return
#' Silently returns the current system date as returned by \code{Sys.Data()}
#'
#' @examples
#' Presents()
#'
#' @export
Presents <- function(){

    message(paste0("Hello, ", getOption("helloRworld.user", "User"), "!"))
    message("Here's some car data for you:")
    print(GenData())

    invisible(Sys.Date())

}
