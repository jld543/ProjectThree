#' Graph of filtered data
#'
#' Graph mean weight by year of species in surveys data
#'
#'
#'@param output name of function used to filter data
#'@return plot1 plot of filtered data
#'@export surveys_plot

surveys_plot <- function(output){
   plot1 <- ggplot(data = output, mapping = aes(x = year, y = mean_weight, color = species_id)) + geom_line() + facet_wrap(facets = vars(species_id))
   return(plot1)
 } 
 
 surveys_plot(output)