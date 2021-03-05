library(MASS)

names(Boston)
dim(Boston)
summary(Boston)

attach(Boston)
summary(cbind(medv,lstat))

png("Boxplot.png")
boxplot(cbind(medv,lstat), horizontal = TRUE, col=2)
dev.off()

png("Scatterplot.png")
plot(medv,lstat, xlab='medv', ylab='lstat', main='Scatter plot of medv vs lstat')
dev.off()

detach(Boston)

lm.fit <- lm(medv~lstat, data=Boston)
summary(lm.fit)
confint(lm.fit)

attach(Boston)
png("Scatter with regression line.png")
plot(lstat,medv, xlab = '% Lower status population', ylab = 'Median home vaue in $1000', main = 'Scatter plot with regression line')
abline(lm.fit,col='red', lwd=2)
dev.off()
detach(Boston)


par(mfrow=c(2,2))
plot(lm.fit) #diagnostic plots


#suggest the model may be improved by removing outliers.

#outliers removed based on interquantie range.

attach(Boston)
outliers <- boxplot(medv, plot=FALSE)$out
print(outliers)
df_removed_outliers <- Boston[-which(Boston$medv %in% outliers),]

png("Scatterplot_outliers removed.png")
plot(df_removed_outliers$medv,df_removed_outliers$lstat, xlab='Median home vaue in $1000', ylab='% Lower status population', main='Scatter with outliers removed')
dev.off()

lm.outliers <- lm(medv~lstat, data=df_removed_outliers)
summary(lm.outliers)
confint(lm.outliers)

par(mfrow=c(2,2))
plot(lm.outliers)


png("Scatter with regression line (outliers removed).png")
plot(df_removed_outliers$medv,df_removed_outliers$lstat, xlab = '% Lower status population', ylab = 'Median home vaue in $1000', main = 'Scatter plot with regression line (outliers removed)')
abline(lm.outliers,col='red', lwd=2)
dev.off()
detach(Boston)



