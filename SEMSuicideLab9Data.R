install.packages("lavaan", dependencies = TRUE)
library(lavaan)

model.suicide <- '
  #regressions
    SuicideRisk ~ Burden_Belongingness + Capability + CombatExposure + PTSD
    Burden_Belongingness ~ PTSD + Capability + CombatExposure
    Capability ~ CombatExposure
    PTSD ~ CombatExposure
'
fit <- sem(model.suicide, data=PSY706_Sp2022_MilitarySuicideLAB9, meanstructure=TRUE)
summary(fit, standardized=TRUE, fit.measures=TRUE)

install.packages("lavaanPlot", dependencies = TRUE)
library(lavaanPlot)
lavaanPlot(model = fit, coefs = TRUE, stand = TRUE, sig = 0.05)
#standardized regression paths, showing only paths with p<= .05
