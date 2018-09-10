context("Testing Giving Presents")

test_that("Presents gives presents",{

    expect_message(Presents(), "^Hello,")
    expect_message(Presents(), "Here's some car data for you:")
    expect_output(Presents(), "mpg|cyl|disp|hp|drat|wt|qsec|vs|am|gear|carb")

})

test_that("Data generated is subset of mtcars", {

    expect_equal(NROW(GenData() %>% dplyr::anti_join(datasets::mtcars)), 0)

})
