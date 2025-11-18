#' Linear Regression Function
#'
#' Conducts linear regression model and computes coefficient estimates, fitted values, and residuals.
#'
#' @param X input value
#'
#' @param Y input value
#'
#' @return the coefficient estimates, fitted values, and residuals
#'
#' @examples
#' library(datasets)
#' data(mtcars)
#' Y <- mtcars$hp
#' X <- cbind(mtcars$wt, mtcars$drat)
#' linearregression(X,Y)
#'
#' @export
#'
linearregression <- function(X,Y){
  X <- cbind(1,X)
  beta_estimates <- solve(t(X) %*% X) %*% t(X) %*% Y
  fitted_values <- X %*% beta_estimates
  residuals <- Y - fitted_values
  return(list(beta_hat = beta_estimates, yhat = fitted_values, res = residuals))
}
