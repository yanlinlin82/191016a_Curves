set.seed(191016)
n <- 10
a <- rnorm(n)
b <- rnorm(n, sd = .1)
c <- rainbow(n)
png("plot.png", width = 800, height = 300)
par(mar = rep(0,4))
for (i in 1:n) {
  plot(function(x) sin(x * a[[i]]) + b[[i]],
       0, 10 * pi, col = c[[i]],
       add = (i > 1),
       ylim = c(-2, 2))
}
dev.off()
