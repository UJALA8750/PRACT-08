# Set working directory
setwd("C:/Users/IT-30/Downloads/DATASETS")

# Load dataset
college_data <- read.csv("College_Marks_Dataset.csv")

# Check structure
str(college_data)

# Convert categorical variables to factors
college_data$Class <- as.factor(college_data$Class)
college_data$Grade <- as.factor(college_data$Grade)

# Two-way ANOVA
anova_twoway <- aov(College_Marks ~ Class * Grade, data = college_data)

# Summary
summary(anova_twoway)
