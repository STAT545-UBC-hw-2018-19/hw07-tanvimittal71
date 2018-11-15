#' Apply cube root
#'
#' @param x The vector to calculate cube root
#' @param plot_it Display a plot of \code{x} vs the output? Use logical.
#' \code{FALSE} by default.
#'
#' @return
#' A vector that is a cube root of \code{x}.
#'
#' @examples
#' cbrt(27)
#' @rdname cbrt
#' @export
cbrt <- function(x, plot_it=FALSE) pow(x, a=1/3, plot_it=plot_it)
