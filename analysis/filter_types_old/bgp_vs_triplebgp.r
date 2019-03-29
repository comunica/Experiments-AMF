# H0: BGP == TripleBGP
# Compare means with one-way ANOVA

## Bloom
data <- read.csv('../../results/filter_types/plot_all.csv', sep = ';')
t.test(data$combination_2, data$combination_6,paired=TRUE)
# p: 0.5145
# => Accept H0, equal means
mean(data$combination_2) # 12284.03
mean(data$combination_6) # 16931.79
# BGP == Triple !

## GCS
data <- read.csv('../../results/filter_types/plot_all.csv', sep = ';')
t.test(data$combination_3, data$combination_7,paired=TRUE)
# p: 0.6197
# => Accept H0, equal means
mean(data$combination_3) # 12582.91
mean(data$combination_7) # 16145.12
# BGP == Triple !