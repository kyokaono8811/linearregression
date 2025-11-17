library(datasets)
data(iris)
data <- iris[iris$Species == "setosa",]
Y <- data$Sepal.Length
X <- cbind(data$Petal.Length, data$Petal.Width)
test_that("linear regression works", {
  expect_equal(as.vector(linearregression(X,Y)$beta_hat), as.vector(lm(Y~X)$coefficient))
  expect_equal(as.vector(linearregression(X,Y)$yhat), as.vector(lm(Y~X)$fitted.values))
  expect_equal(as.vector(linearregression(X,Y)$res), as.vector(lm(Y~X)$residuals))
})
