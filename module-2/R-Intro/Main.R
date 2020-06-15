# Basics
# Calc 3+4
3+4

# Assign 3 to x and 4 to y
x <- 3
y <- 4

# Print x+y
x+y

# Play with data
# Load dataset / from script
Admin <- read.csv("~/Work/Ironhack/dataV2-labs/module-2/R-Intro/Admission_Predict.csv", stringsAsFactors=FALSE)
Admin2 <- read.csv("~/Work/Ironhack/dataV2-labs/module-2/R-Intro/Admission_Predict.csv", stringsAsFactors=FALSE)

# Dataset summary
summary(Admin)

# Rename column (all cols affected)
colnames(Admin2) <- c("col 1", "lemons")

# Rename specific column
names(Admin)[names(Admin)=="TOEFL.Score"] <- "IELTS.Score"

# Look at data
str(Admin)
head(Admin)

# Change stuff based on condition
Admin$IELTS.Score[Admin$IELTS.Score > 93 & Admin$IELTS.Score < 102] <- 7

# Get min/max/mean/median
min(Admin$IELTS.Score)
max(Admin$IELTS.Score)
mean(Admin$IELTS.Score)
median(Admin$IELTS.Score)

# Calc quantiles
quantile(Admin$IELTS.Score)

# Calc quantiles
quantile(Admin$IELTS.Score, c(.35, .55))

# Histogram
hist(Admin$GRE.Score)

# Boxplot
boxplot(Admin$SOP~Admin$LOR)

# Scatter
library(ggplot2)
ggplot(Admin, aes(GRE.score, IELTS.Score))+geom_point()

# Correlation
cor.test(Admin$University.Rating, Admin$Chance.of.Admit)

# T test
t.test(Server$V1, mu=9, conf.level=0.1)
