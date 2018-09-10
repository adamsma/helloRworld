.onLoad <- function(libname, pkgname){

    op <- options()

    op.hrw <- list(
        helloRworld.user = Sys.getenv("username")
    )

    toset <- !(names(op.hrw) %in% names(op))

    if(any(toset)) options(op.hrw[toset])

    invisible()

}

.onAttach <- function(libname, pkgname){
    packageStartupMessage("Welcome to the Hello R World Package!")
}

.onUnload <- function(libname, pkgname){

    message("Goodbye! I hope you had fun!")

}


