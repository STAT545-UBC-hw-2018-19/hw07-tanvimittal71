#' Apply box-cox transformation to smoothen non-linearity of data
#'
#' @param x is the vector to apply box-cox transformation
#' @param lambda is the power parameter in box-cox transformation
#' @return
#' \itemize{
#'    \item if lambda = 0, ln(x)
#'    \item for all other lambda, (x^lambda-1)/lambda
#' }
#'
#' @export

box.cox <- function(x,lambda){
    if(lambda == 0){
        return(log(x))
    }
    else{
        return((pow(x,lambda) - 1)/lambda)
    }
}
