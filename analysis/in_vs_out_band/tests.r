# Compare means with Kruskal-Wallis test (nonparametric, because non-normal distribution)

dataq <- read.csv('../../results/in_vs_out_band/data_all.csv', sep = ';')

# Means
aggregate(dataq$time, list(dataq$combination), median)

#boxplot(time ~ combination, data = data, ylab="Exec (ms)", xlab="Combination")

# H0: Equal means between combinations
kruskal.test(time ~ combination, data = dataq)
# p: 0.7323
# => Accept H0, equal means


datahttp <- read.csv('../../results/in_vs_out_band/data_http.csv', sep = ';')
# H0: Equal means between combinations
kruskal.test(requests ~ combination, data = datahttp)
# p: 0.406
# => Accept H0, equal means
