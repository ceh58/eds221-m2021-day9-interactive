install.packages("reprex")
install.packages("kableExtra")

library(reprex)
library(kableExtra)
library(palmerpenguins)
library(tidyverse)
library(datapasta)

ggplot(data = penguins, 
       aes(x = bill_length_mm, y = flipper_length_mm)) %>%
  geom_point()
  
#----create a reprex to reproduce error----
#create mini dataset to work with
#update code with mini dataset

datapasta::df_paste(head(penguins, 5)[, c("bill_length_mm", "flipper_length_mm")])

my_data <- data.frame(
     bill_length_mm = c(39.1, 39.5, 40.3, NA, 36.7),
  flipper_length_mm = c(181L, 186L, 195L, NA, 193L)
)

ggplot(data = my_data, 
       aes(x = bill_length_mm, y = flipper_length_mm)) %>%
  geom_point()
