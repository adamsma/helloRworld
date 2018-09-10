context("Testing Hello")

test_that("hello prints proper message", {
    expect_output(hello(), "Hello, world!")
})
