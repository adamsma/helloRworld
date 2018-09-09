GenData <- function(){

    numCols <- sample(NCOL(mtcars),1)

    mtcars %>%
        elect(sample(seq_along(mtcars), numCols)
        )

}

Presents <- function(){

    message(paste("Hello,", getOption(helloRworld.user, "user"), "!"))
    message("Here's some car data for you:")
    print(GenData())

}
