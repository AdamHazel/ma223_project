# Read raw data
data <- read.csv("../data/raw_data.csv", encoding = "UTF-8")
data <- na.omit(data)

# Running checks
head(data)
str(data)
summary(data)

