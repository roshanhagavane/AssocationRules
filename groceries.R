library(arules)
library(arulesViz)

groceries<-read.transactions(file.choose(),format="basket")
summary(groceries)

rules <- apriori(groceries,parameter=list(support=0.002, confidence = 0.5))
rules
inspect(head(sort(rules, by = "lift")))
plot(rules)
plot(rules, method = "grouped")
plot(rules,method = "scatterplot")
plot(rules,method = "graph")

#trying with different values of support and confidence
rules <- apriori(groceries,parameter=list(support=0.002, confidence = 0.8))
rules
inspect(head(sort(rules, by = "lift")))
plot(rules)
plot(rules, method = "grouped")
plot(rules,method = "scatterplot")
plot(rules,method = "graph")

rules <- apriori(groceries,parameter=list(support=0.004, confidence = 0.8))
rules
inspect(head(sort(rules, by = "lift")))
plot(rules)
plot(rules, method = "grouped")
plot(rules,method = "scatterplot")
plot(rules,method = "graph")


#trying with different values of minlen

rules <- apriori(groceries,parameter=list(support=0.002, confidence = 0.1))
rules
inspect(head(sort(rules, by = "lift")))
plot(rules)
plot(rules, method = "grouped")
plot(rules,method = "scatterplot")
plot(rules,method = "graph")

rules <- apriori(groceries,parameter=list(support=0.002, confidence = 0.9))
rules
inspect(head(sort(rules, by = "lift")))
plot(rules)
plot(rules, method = "grouped")
plot(rules,method = "scatterplot")
plot(rules,method = "graph")
