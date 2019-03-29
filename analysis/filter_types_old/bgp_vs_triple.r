# H0: BGP == Triple
# Compare means with one-way ANOVA

## Bloom
data <- read.csv('../../results/filter_types/plot_all.csv', sep = ';')
t.test(data$combination_2, data$combination_4,paired=TRUE)
# p: 0.5161
# => Accept H0, equal means
mean(data$combination_2) # 12284.03
mean(data$combination_4) # 16917.35
# BGP == Triple !

## GCS
data <- read.csv('../../results/filter_types/plot_all.csv', sep = ';')
t.test(data$combination_3, data$combination_5,paired=TRUE)
# p: 0.6197
# => Accept H0, equal means
mean(data$combination_3) # 12582.91
mean(data$combination_5) # 16145.51
# BGP == Triple !