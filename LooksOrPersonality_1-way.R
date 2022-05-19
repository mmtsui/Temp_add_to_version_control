LooksOrPersonality <- read_sav("SPSS Field Datasets/DS5 SPSS Files/LooksOrPersonality.sav", header=TRUE,colclasses("att_high","av_high","ug_high","att_some","av_some","ug_some","att_none","av_none","ug_none"))
summary(LooksOrPersonality)
anova_one_way <- aov(Strategy~att_high, data = LooksOrPersonality)
summary(anova_one_way)




