# Compare means with Kruskal-Wallis test (nonparametric, because non-normal distribution)

data <- read.csv('../../results/caching/data_all.csv', sep = ';')
data_amf <- read.csv('../../results/client_algos/data_all.csv', sep = ';')
data_noamf <- read.csv('../../results/caching_none/data_all.csv', sep = ';')

# Means
aggregate(data$time, list(data$combination), median)
# HTTP+Filter   732.0
# Filter        1126.0
# HTTP          652.5
# None          254672.5
aggregate(data_noamf$time, list(data_noamf$combination), median)
# HTTP          2408.0
# None          4156.5

#boxplot(time ~ combination, data = data, ylab="Exec (ms)", xlab="Combination")

# H0: No statistical difference between combinations
kruskal.test(time ~ combination, data = data)
# p: < 2.2e-16
# => Reject H0, non-equal means => big statistical difference

# H0: Filter == HTTP
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_1' | data$combination=='combination_2'),])
# p: 0.02255
# => Reject H0, non-equal means => Filter > HTTP

# H0: HTTP+Filter == HTTP
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_0' | data$combination=='combination_2'),])
# p: 0.7694
# => Accept H0, equal means => HTTP+Filter == HTTP

# H0: AMF-nocache == noAMF-nocache
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_3' | data_noamf$combination=='combination_1'),])
# p: < 2.2e-16
# => Reject H0, non-equal means => AMF-nocache < noAMF-nocache

# H0: AMF-cache == noAMF-cache
kruskal.test(time ~ combination, data = data[which(data_amf$combination=='combination_3' | data_noamf$combination=='combination_0'),])
# p: < 2.2e-16
# => Reject H0, non-equal means => AMF-cache < noAMF-cache
