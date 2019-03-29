# H0: None == BGP
# Compare means with one-way ANOVA

## Bloom
data <- read.csv('../../results_old/filter_types/data_all.csv', sep = ';')

data <- data[which(data$combination=='combination_0' | data$combination=='combination_4'),]
print(data)

kruskal.test(combination ~ time, data = data)


#t.test(data$combination_0, data$combination_4,paired=TRUE)
#kruskal.test(combination_1 ~ combination_5, data = data)
# p: 0.5265
# => Accept H0, equal means
#mean(data$combination_0) # 12500.69
#mean(data$combination_4) # 16917.35
# None == BGP !

## GCS
#t.test(data$combination_1, data$combination_5,paired=TRUE)
# p: 0.6731
# => Accept H0, equal means
#mean(data$combination_1) # 13250.39
#mean(data$combination_5) # 16145.51
# None == BGP !