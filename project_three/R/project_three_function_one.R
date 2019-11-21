#' Filters data from surveys
#' 
#' Filters the mean weight by year from surveys data
#' 
#'@param surveys a dataset containing a column you'd like to summarize
#'@return weights a summary of the data set
#'@export surveys_weight_by_year 

surveys_weight_by_year <- function(surveys){
   weights <- surveys %>% 
     filter(!is.na(weight)) %>% 
     group_by(year, species_id) %>% 
     summarize(mean_weight = mean(weight))
   return(weights)
   }

surveys_weight_by_year(surveys)