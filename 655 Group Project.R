############
### LOAD ###
############
install.packages("readxl")
library(readxl)
df = read_excel("Airfare (1).xlsx",sheet = 1)
df$S_CITY = NULL
df$E_CITY = NULL
df$S_CODE = as.factor(df$S_CODE)
df$E_CODE = as.factor(df$E_CODE)
df$VACATION = as.factor(df$VACATION)
df$SW = as.factor(df$SW)
df$SLOT = as.factor(df$SLOT)
df$GATE = as.factor(df$GATE)

#################
### PARTITION ###
#################
set.seed(1234)
N = nrow(df)
trainingSize  = round(N*0.6)
trainingCases = sample(N, trainingSize)
training = df[trainingCases,]
test     = df[-trainingCases,]

#############
### BUILD ###
#############
model = lm(FARE ~ ., data=training)
summary(model)

#improve the model
model = step(model)
summary(model)

###############
### PREDICT ###
###############
predictions = predict(model, test)
observations = test$FARE
errors = observations - predictions
mape = mean(abs(observations-predictions)/observations)
rmse = sqrt(mean((observations-predictions)^2))

# compare performance to benchmark
errors_bench = observations - mean(training$FARE)
mape_bench = mean(abs(errors_bench)/observations)
rmse_bench = sqrt(mean(errors_bench^2))
                  