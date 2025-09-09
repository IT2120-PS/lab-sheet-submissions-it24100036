setwd("C:/Users/ASUS1/OneDrive/Desktop/IT24100036-Lab_6")

cat("Question 1 - Binomial Distribution\n")
cat("i. Distribution: Binomial(n=44, p=0.92)\n")

pl_ii <- dbinom(40, 44, 0.92)
cat("ii. p(X<=40) =", pl_ii, "\n")

pl_iii <- pbinom(35, 44, 0.92, lower.tail = TRUE)
cat("iii. P(X<=35) =", pl_iii, "\n")

pl_iv <- pbinom(37, 44, 0.92, lower.tail = FALSE)
cat("iv. P(X>=38) =", pl_iv, "\n")

pl_v <- pbinom(42, 44, 0.92, lower.tail = TRUE) - pbinom(39, 44, 0.92, lower.tail = TRUE)
cat("v. P(40<=X<=42) =", pl_v, "\n\n")


cat("Question 2 - Poisson Distribution\n")
cat("i. Random variable X: Number of babies born in the hospital in a day\n")

cat("ii. Distribution: Poisson(lambda=5)\n")

p2_iii <- dpois(6, 5)
cat("iii. P(X=6) =", p2_iii, "\n")

p2_iv <- ppois(6, 5, lower.tail = FALSE)
cat("iv. P(X>6) =", p2_iv, "\n\n")

cat("Exercise 1 - Binomial Distribution\n")
cat("i. Distribution: Binomial(n=50, p=0.85)\n")

p_ex1_ii <- pbinom(46, 50, 0.85, lower.tail = FALSE)
cat("ii. P(X>=47) =", p_ex1_ii, "\n\n")

cat("Exercise 2 - Poisson Distribution\n")
cat("i. Random variable X: Number of customer calls per hour\n")

cat("ii. Distribution: Poisson(lambda=12)\n")

p_ex2_iii <- dpois(15, 12)
cat("iii. P(X=15) =", p_ex2_iii, "\n")