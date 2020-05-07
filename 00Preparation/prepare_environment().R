# Run these scripts before working.
## install.packages(c("dplyr", "ggplot2movies", "mosaicCore", "pander", "shiny", "tidyverse"))
install.packages("shiny")
install.packages("mosaic")

library("ggplot2movies")
library("shiny")
library("mosaicCore")
library("pander")
library("tidyverse")
library("dplyr")

#?lapply
#see https://stackoverflow.com/questions/8175912/load-multiple-packages-at-once

#prepare_environment <- function(x) {
 # if x == "ggplot2movies":
  #  packages <- c(
   #   "ggplot2movies", 
    #  "mosaic", 
     # "pander", 
      #"tidyverse", 
      #"dplyr")
    
  #print('Environment prepared')
  #return(packages)
#}

#prepare_environment()