## show.test.R
## Yang Lu Yang.Lu@williams.edu

library(pa)

## data(jan)
## b1 <- brinson(x = jan)
## truth <- b1
## data(quarter)
## b2 <- brinson(x = quarter)
## truth.multi <- b2
## save(truth, truth.multi, file = "show.test.RData")

load("show.test.RData")

## Single-period

data(jan)
result <- brinson(x = jan)
stopifnot(all.equal(result, truth))

## Multi-period

data(quarter)
result.multi <- brinson(x = quarter)
stopifnot(all.equal(result.multi, truth.multi))

