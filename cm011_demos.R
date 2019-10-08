
library(here)
library(tidyverse)

data_url <- "http://gattonweb.uky.edu/sheather/book/docs/datasets/GreatestGivers.xls"

#read_csv can directly import URLs, but read_excel requires you to download it first

#Here is the old syntax, not good practice
# donwload.file(url, data_url,
#               destfile = paste('./datasets', file_name))

download.file(url = data_url,
              destfile = (here::here("test", "GreatestGivers.xls")))

download.file(url = data_url,
              destfile = (here::here("test", "file_name")))

library(readxl)

# Missed a code section before this point, makes this following code void...

philanthropist <- read_excel(here::here("test", file_name), trim_ws = TRUE)

View(philanthropist)



