# Compare means with Kruskal-Wallis test (nonparametric, because non-normal distribution)

data <- read.csv('../../results/delay/data_all.csv', sep = ';')
data_none <- data[which(data$combination=='combination_0' | data$combination=='combination_1' | data$combination=='combination_2' | data$combination=='combination_3'),]
data_triple <- data[which(data$combination=='combination_4' | data$combination=='combination_5' | data$combination=='combination_6' | data$combination=='combination_7'),]
data_bgp <- data[which(data$combination=='combination_8' | data$combination=='combination_9' | data$combination=='combination_10' | data$combination=='combination_11'),]

# Means
aggregate(data$time, list(data$combination), median)
#  combination_0 1516.5
#  combination_1 1196.0
#  combination_2  957.0
#  combination_3  935.0
#  combination_4 1479.0
#  combination_5 1193.0
#  combination_6  986.5
#  combination_7  977.5
#  combination_8 1241.0
#  combination_9  679.0
#  combination_10  422.5
#  combination_11  400.5

median(data_none$time)
median(data_triple$time)
median(data_bgp$time)
# None: 1054
# Triple: 1055.5
# BGP: 556.5

#boxplot(time ~ combination, data = data, ylab="Exec (ms)", xlab="Combination")

# H0: None == Triple
kruskal.test(time ~ combination, data = data_none)
kruskal.test(time ~ combination, data = data_triple)
kruskal.test(time ~ combination, data = data_bgp)
# p: 0.2905, 0.2306, 0.002891
# => Accept H0, equal means => None == Triple