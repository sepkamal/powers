#' Generic Power Function
#'
#' This function raises a vector to any power. I'm making it internal,
#' by not \code{export}ing, because I don't want users to use it.
#' Why not? Because I said so!
#'
#'
#'
#' This function can convert non-numeric inputs into numeric values.
#'
#' It is also desinged to drop NA's, and will display an warning message if this is the case.
#'
#' @param x Vector to raise to some power.
#' @param a Power to raise \code{x} by.
#' @param plot_it Display a plot of \code{x} vs the output? Use logical.
#'
#' @return The vector \code{x}, raised to the power of \code{a}.
pow <- function(x, a, plot_it=FALSE) {
	if(any(is.na(x))) warning("Input values contain NA(s). These will be dropped from the results")
	res <- (as.numeric(x))^a  # calculate the power, after taking numeric version of input
	if (plot_it) print(ggplot2::qplot(x, res)) # plot the values and powers if plot_it is TRUE
	return(res[!is.na(res)])  ### drop NA's and return rest of values
}
