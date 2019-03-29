# Compare means with Kruskal-Wallis test (nonparametric, because non-normal distribution)

data <- read.csv('../../results/filter_types/data_all.csv', sep = ';')

# Means
aggregate(data$time, list(data$combination), median)
# Bloom: 686.0
# GCS: 814.0

#boxplot(time ~ combination, data = data, ylab="Exec (ms)", xlab="Combination")

# H0: Bloom == GCS
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_2' | data$combination=='combination_3'),])
# p: 0.1786
# => Accept H0, equal means => Bloom == GCS
# Low probab though, so Bloom is slightly better
