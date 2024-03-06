#' Estimate the OLS coefficients
#'
#' @param y A numerical vector of size n*1.
#' @param b A numerical matrix of size n*k.
#'
#' @return A numerical vector of size k*1.
#' @export
#' 
#' @examples
#' X <- matrix(c(3, 2, 5, 1), nrow = 2)
#' y <- c(5, 1)
#' estimate_beta(y, X)

estimate_beta <- function(y, X) {
    beta <- solve(t(X) %*% X) %*% t(X) %*% y
    return(beta)
}