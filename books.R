library(arules)
library(arulesViz)
book <- read.csv(file.choose())

View(book)

rules <- apriori(as.matrix(book),parameter=list(support=0.02, confidence = 0.5,minlen=5))
rules
inspect(head(sort(rules, by = "lift")))  

plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")

#trying with different values of support and confidence
rules <- apriori(as.matrix(book),parameter=list(support=0.02, confidence = 0.8,minlen=5))
rules
inspect(head(sort(rules, by = "lift")))  

plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")


rules <- apriori(as.matrix(book),parameter=list(support=0.04, confidence = 0.8,minlen=5))
rules
inspect(head(sort(rules, by = "lift")))  

plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")


#trying with different values of minlen
rules <- apriori(as.matrix(book),parameter=list(support=0.02, confidence = 0.5,minlen=6))
rules
inspect(head(sort(rules, by = "lift")))  

plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")

rules <- apriori(as.matrix(book),parameter=list(support=0.02, confidence = 0.5,minlen=2))
rules
inspect(head(sort(rules, by = "lift")))  

plot(rules,method = "scatterplot")
plot(rules,method = "grouped")
plot(rules,method = "graph")

