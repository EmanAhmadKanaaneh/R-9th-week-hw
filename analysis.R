# analysis
# R course for beginners
# Week 9
# assignment by Eman Ahmad, id 314659277

N = 50

analysis = data.frame(
  subject = 1 : N,
  age = sample(18:70, N, replace = TRUE),
  gender = sample(c('Female','Male'), N, replace =TRUE),
  responseTime = sample(200:600, N, replace = TRUE),
  depression = sample(0:100, N, replace = TRUE),
  sleep = round(runif(N, 2, 12), 1)
)

# Save the data frame to a file
write.csv(analysis, "analysis.csv", row.names = FALSE)

# Display the first few rows
print(head(analysis))

source("C:/Users/ahmad/Desktop/Master's/courses/R/functions.R")

results <- generate_summary(analysis, subject_start = 5, subject_end = 15)

print(results)

write.csv(results, "results.csv", row.names = FALSE)