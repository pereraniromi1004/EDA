#create data frame
data <- data.frame(technique = rep(c("tech1", "tech2", "tech3"), each = 10),
                   score = c(76, 77, 77, 81, 82, 82, 83, 84, 85, 89,
                             81, 82, 83, 83, 83, 84, 87, 90, 92, 93,
                             77, 78, 79, 88, 89, 90, 91, 95, 95, 98))

#view first six rows of data frame
head(data)

#Visualize the exam scores for each group.
boxplot(score ~ technique,
        data = data,
        main = "Exam Scores by Studying Technique",
        xlab = "Studying Technique",
        ylab = "Exam Scores",
        col = "steelblue",
        border = "black")

#Perform a one-way ANOVA.
#fit the one-way ANOVA model
model <- aov(score ~ technique, data = data)

#view model output
summary(model)

#Perform pairwise t-tests with Bonferroni's correction
pairwise.t.test(data$score, data$technique, p.adjust.method="bonferroni")

