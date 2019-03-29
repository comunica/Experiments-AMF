# Compare means with Kruskal-Wallis test (nonparametric, because non-normal distribution)

data <- read.csv('../../results/server_metadata_enabled/data_all.csv', sep = ';')

# Means
aggregate(data$time, list(data$combination), median)
# C0        4470.0
# C1K       4501.0
# C10K      1227.0
# C100K     1023.0
# C1000K    1043.5
# 0         4187.0
# 1K        4568.5
# 10K       1272.5
# 100K      1988.0
# 1000K     4491.0

#boxplot(time ~ combination, data = data, ylab="Exec (ms)", xlab="Combination")

# H0: Means of cached combinations are equal
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_0' | data$combination=='combination_1' | data$combination=='combination_2' | data$combination=='combination_3' | data$combination=='combination_4'),])
# p: 2.11e-07
# => Reject H0, non-equal means => Exec times decrease with increasing result counts

# H0: Means of non-cached combinations are equal
kruskal.test(time ~ combination, data = data[which(data$combination=='combination_5' | data$combination=='combination_6' | data$combination=='combination_7' | data$combination=='combination_8' | data$combination=='combination_9'),])
# p: 0.0005934
# => Reject H0, non-equal means => Exec times decrease with increasing result counts


data_thres_cached <- read.csv('../../results/server_metadata_enabled/threshold_serverload_cached.csv', sep = ';')
cor.test(data_thres_cached$threshold, data_thres_cached$load, method="pearson") # p: 0.4577, corr: 0.4406407

data_thres_notcached <- read.csv('../../results/server_metadata_enabled/threshold_serverload_notcached.csv', sep = ';')
cor.test(data_thres_notcached$threshold, data_thres_notcached$load, method="pearson") # p: 0.03266, corr: 0.9086962