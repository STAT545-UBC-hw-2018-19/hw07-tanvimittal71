context("Cube root function")

test_that("Works for numeric values",{
    num_vec <- c(1.8,2,3.1,4.6)
    #comparing with mathematical formula
    expect_identical(cbrt(num_vec),num_vec^(1/3))
})

test_that("Logicals automatically converted to numerics",{
    log_vec<-c(TRUE,FALSE)
    #Expected value is 0 for 0 and 1 for 1
    expect_identical(cbrt(log_vec),c(1,0))
})

test_that("Runs for randomly generated input",{
    num <- runif(1)
    #as input is less than 1, output should be less than 1
    expect_lt(cbrt(num),1)
})
