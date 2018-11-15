context("Box-cox transformation")

test_that("lambda= 0 works for numeric values",{
    num_vec <- c(1.8,2,3.1,4.6)
    lambda = 0
    #as lambda=0, output should be log(x)
    expect_identical(box.cox(num_vec,lambda),log(num_vec))
})

test_that("Logicals automatically converted to numerics",{
    log_vec<-c(TRUE,FALSE)
    lambda = 3
    # output should be 0 for 1 and -1/lambda for 0
    expect_identical(box.cox(log_vec,lambda),c(0,-1/lambda))
})

test_that("Does not work for character input",{
    num <- c("hi","ok")
    lambda =4
    #as input is char, an error is expected
    expect_error(box.cox(num,lambda))
})
