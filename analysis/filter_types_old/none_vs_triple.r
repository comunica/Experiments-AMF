# H0: None == Triple
# Compare means with one-way ANOVA

## Bloom
data <- read.csv('../../results/filter_types/plot_all.csv', sep = ';')
#t.test(data$combination_0, data$combination_2,paired=TRUE)
kruskal.test(combination_2 ~ combination_3, data = data)
# p: 0.3246
# => Accept H0, equal means
mean(data$combination_0) # 12500.69
mean(data$combination_2) # 12284.03
# None == Triple !

## GCS
data <- read.csv('../../results/filter_types/plot_all.csv', sep = ';')
#t.test(data$combination_1, data$combination_3,paired=TRUE)
# p: 0.09381
# => Accept H0, equal means
#mean(data$combination_1) # 13250.39
#mean(data$combination_3) # 12582.91
# None == Triple !