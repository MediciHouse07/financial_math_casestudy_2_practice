library(zoo)
library(xts)
library("quantmod")
library("tseries")
library("vars")
library("fxregime")
library(timetk)
library(readr)
library(dplyr)
library(reshape2)
library(graphics)
library(quantmod)
library(stringr)


files <- list.files(path = "tbills_data") # all the datas
target_name <- str_split_fixed(files, "_",n=3)[,1]

DGS1 <- read_csv("tbills_data/DGS1_df.csv") %>% tk_xts(date_var = "...1")
DGS5 <- read_csv("tbills_data/DGS5_df.csv") %>% tk_xts(date_var = "...1")
DGS10 <- read_csv("tbills_data/DGS10_df.csv") %>% tk_xts(date_var = "...1")
DGS3MO <- read_csv("tbills_data/DGS3MO_df.csv") %>% tk_xts(date_var = "...1")
DAAA <- read_csv("tbills_data/DAAA_df.csv") %>% tk_xts(date_var = "...1")
DBAA <- read_csv("tbills_data/DBAA_df.csv") %>% tk_xts(date_var = "...1")
DCOILWTICO <- read_csv("tbills_data/DCOILWTICO_df.csv") %>% tk_xts(date_var = "...1")


tbills <-merge(
  DGS3MO,
  DGS1,
  DGS5,
  DGS10,
  DAAA,
  DBAA,
  DCOILWTICO)["2000::2013-05"]

tbills_df <- data.frame(tbills)
write.csv(tbills_df , file = paste0('tbills_data/','tbills_df.csv'))
