# Run this to load all necessary libraries
library(tidyverse)
install.packages("palmerpenguins") # Run this if you can't load the palmerpenguins library 
library(palmerpenguins)
pgs <- penguins %>% drop_na
head(pgs)

# final plot from previous lab (Lab#2)
pgs %>% 
  ggplot() +
  geom_point(aes(x = bill_length_mm, y = bill_depth_mm, color = species),
             size = 1.5, alpha = 1) +
  labs(x = "Bill Length (mm)",
       y = "Bill Depth (mm)",
       color = "Species") +
  theme(text = element_text(size = 15))