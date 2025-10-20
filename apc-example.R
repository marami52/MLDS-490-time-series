# Install and load the apc package if not already installed
if (!require(apc)) install.packages("apc")
library(apc)
# The data set has counts of male deaths by age 25–89 and by 1967–2007. There is no direct
# measure for the exposure to asbestos.
data.asbestos <- data.asbestos()
data.asbestos
apc.fit.table(data.asbestos, "poisson.response")
fit.apc<- apc.fit.model(data.asbestos, "poisson.response", "APC")
fit.apc$coefficients.canonical[1:8, ]
apc.plot.fit(fit.apc)
