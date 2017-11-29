#' Raise to power with datatable
#'
#' Raise a set of numbers to a power and store the results as a dataframe
#'
#' @param x The vector or single columned-dataframe containing numbers to be raised to an exponent.
#' @param a The exponent to raise the input values to.  \code{a = 2} by default.
#' @param plot_it Display a plot of \code{x} vs the output? Use logical.
#' \code{FALSE} by default.
#'
#' @return  A dataframe with all inputs in one column, and their calculated powers in another.
#'
#' @details
#' This function takes a vector of numbers as the input, and raises each number to an exponent.
#'
#' This function returns a datatable with two columns. The first column, Base, contain the input numbers.
#' The second column, Power, contain the result of the inputs raised to the exponent.
#'
#' If you would like to know more about the functionality, please check out the internal \code{\link{pow}}
#' function that this function depends on.
#'
#'
#' @examples
#' power_datatable(1:10)
#' power_datatable(c(2, 5, 20), 3, TRUE)
#' @export

power_datatable <- function(x, a=2, plot_it=FALSE){
	`%>%` <- magrittr::`%>%` ## define pipe operator so can use it below
	df_powers <- data.frame(Base = x[!is.na(x)], Power = pow(x, a, plot_it=plot_it)) # didn't drop NA from Power b/c will already be done in pow() function
	return(df_powers)
}

