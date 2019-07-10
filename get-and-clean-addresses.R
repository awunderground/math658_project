library(tidyverse)

# 
file_path <- "https://opendata.arcgis.com/datasets/c3c0ae91dca54c5d9ce56962fa0dd645_68.csv"

# create a directory for downloading the data
if (!dir.exists("data/")) {
  dir.create("data")
}

# if the data doesn't already exist, download the data
if (!file.exists("data/addresses.csv")) {
  download.file(file_path, "data/addresses.csv")
}

# load the data and convert the variable names to lower case
addresses <- read_csv("data/addresses.csv") %>%
  rename_all(tolower)

# extract quadrant
boom <- addresses %>%
  mutate(quadrant = str_sub(fulladdress, start = -2, end = -1)) %>%
  count(quadrant)





