library(arules)
library(arulesViz)

mymovies <- read.csv(file.choose())

View(mymovies)

rules <- apriori(as.matrix(mymovies[,6:15],parameter=list(support=0.2, confidence = 0.5,minlen=5)))
rules

inspect(head(sort(rules, by = "lift")))  

plot(rules,method = "scatterplot")
plot(rules, method = "grouped")
plot(rules,method = "graph")

#trying with different values of support and confidence
rules <- apriori(as.matrix(mymovies[,6:15],parameter=list(support=0.002, confidence = 0.8,minlen=5)))
rules

inspect(head(sort(rules, by = "lift")))  

plot(rules,method = "scatterplot")
plot(rules, method = "grouped")
plot(rules,method = "graph")

rules <- apriori(as.matrix(mymovies[,6:15],parameter=list(support=0.4, confidence = 0.8,minlen=5)))
rules

inspect(head(sort(rules, by = "lift")))  

plot(rules,method = "scatterplot")
plot(rules, method = "grouped")
plot(rules,method = "graph")


#trying with different values of minlen
rules <- apriori(as.matrix(mymovies[,6:15],parameter=list(support=0.2, confidence = 0.5,minlen=10)))
rules

inspect(head(sort(rules, by = "lift")))  

plot(rules,method = "scatterplot")
plot(rules, method = "grouped")
plot(rules,method = "graph")

rules <- apriori(as.matrix(mymovies[,6:15],parameter=list(support=0.4, confidence = 0.8,minlen=2)))
rules

inspect(head(sort(rules, by = "lift")))  

plot(rules,method = "scatterplot")
plot(rules, method = "grouped")
plot(rules,method = "graph")

