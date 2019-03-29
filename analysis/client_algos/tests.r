# Compare means with Kruskal-Wallis test (nonparametric, because non-normal distribution)

data <- read.csv('../../results/client_algos/data_all.csv', sep = ';')

# Means
aggregate(data$time, list(data$combination), median)
# None: 1492.0
# Triple: 1588.5
# BGPSimple: 745.0
# BGPCombined: 736.0
# TripleBGP: 658.5

#boxplot(time ~ combination, data = data, ylab="Exec (ms)", xlab="Combination")

# H0: None == Triple
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_0' | data$combination=='combination_1'),])
# p: 0.9318
# => Accept H0, equal means => None == Triple

# H0: None == BGPSimple
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_0' | data$combination=='combination_2'),])
# p: 0.006231
# => Accept H0, non-equal means => None > BGPSimple

# H0: None == BGPCombined
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_0' | data$combination=='combination_3'),])
# p: 0.002631
# => Reject H0, non-equal means => None > BGPCombined

# H0: Triple == BGPSimple
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_1' | data$combination=='combination_2'),])
# p: 0.009066
# => Accept H0, non-equal means => Triple > BGPSimple

# H0: Triple == BGPCombined
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_1' | data$combination=='combination_3'),])
# p: 0.004172
# => Reject H0, non-equal means => Triple > BGPCombined

# H0: None == TripleBGP
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_0' | data$combination=='combination_4'),])
# p: 0.00234
# => Reject H0, non-equal means => None > TripleBGP

# H0: Triple == TripleBGP
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_1' | data$combination=='combination_4'),])
# p: 0.003434
# => Reject H0, non-equal means => Triple > TripleBGP

# H0: BGPSimple == TripleBGP
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_2' | data$combination=='combination_4'),])
# p: 0.5758
# => Accept H0, equal means => BGPSimple == TripleBGP

# H0: BGPCombined == TripleBGP
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_3' | data$combination=='combination_4'),])
# p: 0.9484
# => Accept H0, equal means => BGPCombined == TripleBGP

# H0: BGPCombined == BGPSimple
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_3' | data$combination=='combination_2'),])
# p: 0.6689
# => Accept H0, equal means => BGPCombined == BGPSimple