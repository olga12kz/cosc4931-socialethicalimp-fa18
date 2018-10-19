likelihood <- read.table("/Users/Olga/Documents/olga/allprepost.csv", sep = ",", header = T)
attach(likelihood)
names(likelihood)
table(likelihood)

likelihoodcont <- table(prephrs, coaching)
likelihoodcont
chisq.test(likelihoodcont, correct = FALSE)

likelihoodmodel <- glm(coaching ~ prephrs, family = binomial(link = "logit"))
summary(likelihoodmodel)