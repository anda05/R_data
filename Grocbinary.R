grocery <- read.csv("GrocBinary24.csv", header=TRUE)
grocery
ncol(grocery)
nrow(grocery)
summary(grocery)
grocery5 <- grocery[,2:6]
grocery5
grocery5r <- data.frame((grocery5 == 1))
grocery5r
brules <- apriori(grocery5r, parameter=list(support=0.3, confidence=0,
                                            target="Frequent itemsets"))
brules
inspect(brules)
crules<-apriori(grocery5r, parameter=list(support=0.4, confidence=0.6))
inspect(crules)
drules<-apriori(grocery5r, parameter=list(support=0.3, confidence=0.7))
drules <- subset(drules, lift > 1)
inspect(drules)
