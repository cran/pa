## regress.test.R
## Yang Lu Yang.Lu@williams.edu

library(pa)

## data(jan)
## truth <- regress(x = jan)
## data(quarter)
## truth.multi <- regress(x = quarter)
## save(truth, truth.multi, file = "regress.test.RData")

load("regress.test.RData")

## Single-period

data(jan)
result <- regress(x = jan)
stopifnot(all.equal(result, truth))

## Multi-period
data(quarter)
result.multi <- regress(x = quarter)
stopifnot(all.equal(result.multi, truth.multi))

