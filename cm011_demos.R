data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

download.file(url = data_url, destfile = here::here('test','GreatestGivers.xls'))

file_name <- basename(data_url)

library(readxl)
library(tidyverse)

philanthropists <- read_excel(here::here("test","GreatestGivers.xls"), trim_ws = TRUE)
View(philanthropists)

firas_mri <- read_excel('Firas-MRI.xlsx', range="A1:L12")

View(firas_mri)

mri <- firas_mri[ ,c(-10)]
View(mri)

mri %>% 
  pivot_longer(cols = 'Slice 1':'Slice 8',
               names_to = 'slice_number',
               values_to = 'value')
