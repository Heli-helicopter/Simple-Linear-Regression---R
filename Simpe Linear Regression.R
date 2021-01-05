library(MASS)

names(Boston)
dim(Boston)
fix(Boston)
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

attach(Boston)
plot(lstat,medv, xlab = 'lstat', ylab = 'medv', main = 'Scatter pot of medv vs lstat with east Squars regression line')
abline(lm.fit,col='red', lwd=2)
detach(Boston)
