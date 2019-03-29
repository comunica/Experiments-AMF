# Compare means with Kruskal-Wallis test (nonparametric, because non-normal distribution)

data <- read.csv('../../results/skip_bgp_heuristic/data_all.csv', sep = ';')

# Means
aggregate(data$time, list(data$combination), median)
# None: 1232.0
# Always: 601.5
# 1000: 569.0
# 2000: 539.5
# 3000: 603.5
# 4000: 566.5
# 5000: 577.5
# 10000: 609.5

#boxplot(time ~ combination, data = data, ylab="Exec (ms)", xlab="Combination")

# H0: BGPCombined == BGPCombined1000
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_1' | data$combination=='combination_2'),])
# p: 0.284
# => Accept H0, equal means => BGPCombined == BGPCombined1000

# H0: BGPCombined == BGPCombined2000
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_1' | data$combination=='combination_3'),])
# p: 0.1842
# => Accept H0, equal means => BGPCombined == BGPCombined2000
