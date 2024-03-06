#' Estimate the OLS coefficients
#'
#' @param y A numerical vector of size n*1.
#' @param b A numerical matrix of size n*k.
#'
#' @return A numerical vector of size k*1.
#' @export

estimate_beta <- function(y, X){
beta = solve(t(X)*X)*(t(X)*y)
return(beta)
}