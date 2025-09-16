setwd("C:\Users\ASUS1\OneDrive\Desktop\IT24100036_Lab_07_PS")
# (i) P(X <= 10)
q1_i_formula <- (10 - 0) / (30 - 0)
q1_i_punif   <- punif(10, min = 0, max = 30)

# (ii) P(X > 20)
q1_ii_formula <- 1 - (20 - 0) / (30 - 0)
q1_ii_punif   <- punif(20, min = 0, max = 30, lower.tail = FALSE)

cat(sprintf("(i) P(X <= 10)  = %.6f (formula), %.6f (punif)\n", q1_i_formula, q1_i_punif))
cat(sprintf("(ii) P(X > 20)  = %.6f (formula), %.6f (punif)\n\n", q1_ii_formula, q1_ii_punif))



lambda <- 1/2

# (i) P(X <= 3)
q2_i_formula <- 1 - exp(-lambda * 3)
q2_i_pexp    <- pexp(3, rate = lambda)

# (ii) P(X > 4)
q2_ii_formula <- exp(-lambda * 4)
q2_ii_pexp    <- pexp(4, rate = lambda, lower.tail = FALSE)

# (iii) P(2 < X < 4) = F(4) - F(2)
q2_iii_formula <- (1 - exp(-lambda * 4)) - (1 - exp(-lambda * 2))
q2_iii_pexp    <- pexp(4, rate = lambda) - pexp(2, rate = lambda)

cat(sprintf("(i) P(X <= 3)      = %.8f (formula), %.8f (pexp)\n", q2_i_formula, q2_i_pexp))
cat(sprintf("(ii) P(X > 4)      = %.8f (formula), %.8f (pexp)\n", q2_ii_formula, q2_ii_pexp))
cat(sprintf("(iii) P(2 < X < 4) = %.8f (formula), %.8f (pexp)\n\n", q2_iii_formula, q2_iii_pexp))



mu <- 36.8
sigma <- 0.4

# (i) Fever: P(X >= 37.9)
q3_i <- pnorm(37.9, mean = mu, sd = sigma, lower.tail = FALSE)

# (ii) P(36.4 < X < 36.9)
q3_ii <- pnorm(36.9, mean = mu, sd = sigma) - pnorm(36.4, mean = mu, sd = sigma)

# (iii) Find b such that P(X < b) = 0.012  (lower 1.2% quantile)
q3_iii_b <- qnorm(0.012, mean = mu, sd = sigma)

# (iv) Find b such that P(X > b) = 0.01 (upper 1% quantile)
# equivalently: b is the 99th percentile
q3_iv_b <- qnorm(0.01, mean = mu, sd = sigma, lower.tail = FALSE)

cat(sprintf("(i) P(X >= 37.9)        = %.8f\n", q3_i))
cat(sprintf("(ii) P(36.4 < X < 36.9) = %.8f\n", q3_ii))
cat(sprintf("(iii) b with P(X < b)=0.012  => b = %.6f\n", q3_iii_b))
cat(sprintf("(iv)  b with P(X > b)=0.01   => b = %.6f\n", q3_iv_b))



cat("\nSUMMARY\n")
cat(sprintf("Q1 (i)  = %.6f | Q1 (ii) = %.6f\n", q1_i_punif, q1_ii_punif))
cat(sprintf("Q2 (i)  = %.8f | Q2 (ii) = %.8f | Q2 (iii) = %.8f\n", q2_i_pexp, q2_ii_pexp, q2_iii_pexp))
cat(sprintf("Q3 (i)  = %.8f | Q3 (ii) = %.8f | Q3 (iii) b = %.6f | Q3 (iv) b = %.6f\n",
            q3_i, q3_ii, q3_iii_b, q3_iv_b))

