## brinson.test.R
## Yang Lu Yang.Lu@williams.edu

library(pa)

## data(jan)
## truth <- brinson(x = jan)
## data(quarter)
## truth.multi <- brinson(x = quarter)
## save(truth, truth.multi, file = "brinson.test.RData")

load("brinson.test.RData")

## Single-period

data(jan)
result <- brinson(x = jan)

stopifnot(all.equal(result, truth))

## Multi-period

data(quarter)
result.multi <- brinson(x = quarter)

stopifnot(all.equal(result.multi, truth.multi))

