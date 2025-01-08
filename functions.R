# functions
# R course for beginners
# Week 9
# assignment by Eman Ahmad, id 314659277


generate_summary = function(data, subject_start=NULL, subject_end= NULL){
  # Check if the data has fewer than 10 observations
  if(nrow(data)<10){
    stop("data is too short!")
  }
  # Filter data based on subject range if provided
  if (!is.null(subject_start) & !is.null(subject_end)) {
    data <- data[data$subject >= subject_start & data$subject <= subject_end, ]
  }
  describe_variable = function(var){
    if (is.numeric(var)){
      return(c(min = min(var), max = max(var), mean = mean(var)))
    }
    else if (is.factor(var)||is.character(var)){
      return(table(var))
    }
        
  }
  results <- lapply(data, describe_variable)
  
  # המרת הרשימה ל-Data Frame
  results_df <- as.data.frame(do.call(rbind, results))
  return(results_df)
    }
  

save(list = "generate_summary", file = "functions.RData")


