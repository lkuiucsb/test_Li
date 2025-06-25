
#https://lter.github.io/lterdatasampler/index.html

remotes::install_github("lter/lterdatasampler")

## Load Packages
library(tidyverse)
library(lterdatasampler)

df <- lterdatasampler::and_vertebrates


df1 <- df %>%
  filter(species == "Cutthroat trout")

#plot histogram
ggplot(df1, aes(x = length_1_mm)) +
  geom_histogram(binwidth = 1, fill = "red", color = "black") +
  labs(title = "Length of Cutthroat Trout",
       x = "Length (mm)", y = "Count") +
  theme_minimal()



dt <- lterdatasampler::ntl_airtemp %>%
  filter(year>2000)

ggplot(dt, aes(x = sampledate, y = ave_air_temp_adjusted)) +
  geom_line(color = "blue") +
  labs(title = "Air Temperature Over Time",
       x = "Date", y = "Air Temperature (°C)")+
  theme_minimal()
