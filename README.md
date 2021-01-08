# logit lda comparison
Objective:
With this project I looked to predict which direction the stock market would move using the prior 5 days movement as well as the volume traded during the day.

Methodology:
I first fitted the logit model using Direction as the regressand and the prior 5 days and the volume traded as the regressors. The binary classification rule that was set was to predict 'Up' if the logit probability was greater that 0.5 and predict down otherwise.

The only variable that the null can be rejected individually for is the Lag2 variable. The Lag 2 variable can be rejected at the 0.05 significance level but not at the 0.01 level.

Then I computed a confusion matrix from the fitted probabilities and examined the output of the logit model.

Next I repeated the process but instead fit a linear discriminant analysis (LDA) model to the data to compare which model would best fit the data for my objective. 

Results:
Both the logit and LDA models predict with the same accuracy to seven decimal places. The two models do differ in their predictions however; the logit model predicts 'up' slightly worse and 'down' slightly better than the LDA model. Depending on your preferences, either model is acceptable for this objective.