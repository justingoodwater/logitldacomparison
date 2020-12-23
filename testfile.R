library(ISLR)
attach(Weekly)

# fit a logistic regression model using the Weekly data set excluding the variables Today and Year
fit.logit <- glm(Direction ~ ., data = Weekly[, c(2:7, 9)], family = binomial)

# view fitted model
summary(fit.logit)

# compute fitted probabilities and save output
logit.prob <- predict(fit.logit, Weekly, type = "response")

# if the probability is greater than 0.5 predict 'Up' otherwise, predict 'Down' and save output
logit.yhat <- ifelse(logit.prob > 0.5, "Up", "Down")

# view logit confusion matrix
table(logit.yhat, Weekly$Direction)

# calculate accuracy and view rate
logit.accuracy <- (54 + 557)/(54+557+48+430)
logit.accuracy