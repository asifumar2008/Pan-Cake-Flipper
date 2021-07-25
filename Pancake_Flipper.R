df = read.csv("data.csv", header = T)
df["Success_Ratio"] = df$score/df$attempts
dfa = subset(df, df$name == "Arielle")
dfb = subset(df, df$name == "Boris")

#z-test
prop.test(x = c(35, 15),
          n = c(50, 50),
          alternative = "two.sided")

prop.test(x = c(35, 15),
          n = c(50, 50),
          alternative = "less")

prop.test(x = c(35, 15),
          n = c(50, 50),
          alternative = "greater")

