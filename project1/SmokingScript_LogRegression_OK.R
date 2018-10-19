

predsmokingA <- read.table("/Users/Olga/Documents/olga/class9A.csv", sep = ",", header = T)
attach(predsmokingA)
names(predsmokingA)
table(predsmokingA)

predsmokingcont <- table(smoking, coaching)
predsmokingcont
chisq.test(predsmokingcont, correct = FALSE)

predsmokingmodel <- glm(coaching ~ smoking, family = binomial(link = "logit"))
summary(predsmokingmodel)