# Compare means with Kruskal-Wallis test (nonparametric, because non-normal distribution)

data <- read.csv('../../results/probabilities/data_all.csv', sep = ';')

# Means
aggregate(data$time, list(data$combination), median)
# 1 combination_0  838.0
# 2 combination_1  773.5
# 3 combination_2  686.0
# 4 combination_3  635.5
# 5 combination_4  604.5
# 6 combination_5  653.5
# 7 combination_6  850.5
# 8 combination_7 1071.5

#boxplot(time ~ combination, data = data, ylab="Exec (ms)", xlab="Combination")

# H0: No statistical difference between combinations
kruskal.test(time ~ combination, data = data)
# p: 0.184
# => Accept H0, equal means
