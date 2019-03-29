# H0: Bloom == GCS
# Compare means with one-way ANOVA

## Triple
data <- read.csv('../../results/filter_types/plot_all.csv', sep = ';')
#ks.test(data$query, data$combination_2) # p: 1.451e-11 => no normal distribution!
#ks.test(data$query, data$combination_3) # p: 1.451e-11 => no normal distribution!
kruskal.test(combination_2 ~ combination_3, data = data)
#t.test(data$combination_2, data$combination_3,paired=TRUE)
# p: 0.1746
# => Accept H0, equal means

## BGP
data <- read.csv('../../results/filter_types/plot_all.csv', sep = ';')
#t.test(data$combination_4, data$combination_5,paired=TRUE)
# p: 0.4032
# => Accept H0, equal means

## BGPTriple
data <- read.csv('../../results/filter_types/plot_all.csv', sep = ';')
#t.test(data$combination_6, data$combination_7,paired=TRUE)
# p: 0.4027
# => Accept H0, equal means
