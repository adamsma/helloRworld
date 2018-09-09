.onLoad <- function(libname, pkgname){

    op <- optioions()

    op.hrw <- list(
        helloRworld.user <- Sys.getenv("username")
    )

    toset <- !(names(op.hrw) %in% names(op))

    if(any(toset)) options(op.hrw[toset])

    message("Welcome to the Hello R World Package!")

    invisible()

}

.onUnload <- function(libname, pkgname){

    message("Goodbye! I hope you had fun!")

}
