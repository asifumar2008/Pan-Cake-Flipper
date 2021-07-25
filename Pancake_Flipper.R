#Reading the data to R
df = read.csv("data.csv", header = T)

#Creating a new column 'Success_Ratio' - score/attempts
df["Success_Ratio"] = df$score/df$attempts

#Creating 2 seperate dataframes for Arielle and Boris
dfa = subset(df, df$name == "Arielle")
dfb = subset(df, df$name == "Boris")

#Calculating No. of times right hand is used by Arielle and Boris
ra = table(dfa$hand)[2]
rb = table(dfb$hand)[2]

#Calculating the sample size for Arielle and Boris
n = ra+rb

#Two proportion z-test 1 - Both Arielle and Boris are equally good
#Null hypothesis - Proportion of right-hand play type is same between Arielle & Boris
#Alternative hypothesis - Proportion of right-hand play type is not same between Arielle & Boris

prop.test(x = c(ra, rb),
          n = c(n, n),
          alternative = "two.sided")

##Two proportion z-test 2 - Boris is a better player than Arielle
#Null hypothesis - Proportion of right-hand hand play type of Boris is greater than Arielle
#Alternative hypothesis - Proportion of right-hand hand play type of Boris is not greater than Arielle
prop.test(x = c(ra, rb),
          n = c(n, n),
          alternative = "greater")

##Two proportion z-test 3 - Arielle is a better player than Boris
#Null hypothesis - Proportion of right-hand hand play type of Arielle is greater than Boris
#Alternative hypothesis - Proportion of right-hand hand play type of Arielle is not greater than Boris
prop.test(x = c(ra, rb),
          n = c(n, n),
          alternative = "less")
