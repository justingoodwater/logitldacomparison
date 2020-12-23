library(ISLR)
attach(Weekly)

# fit a logistic regression model using the Weekly data set excluding the variables Today and Year
fit.logit <- glm(Direction ~ ., data = Weekly[, c(2:7, 9)], family = binomial)

