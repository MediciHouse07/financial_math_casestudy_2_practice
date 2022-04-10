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

DGS1 <- read_csv("tbills_data/DGS1_df.csv")

DGS5 <- read_csv("tbills_data/DGS5_df.csv")

DGS10 <- read_csv("tbills_data/DGS10_df.csv")

DAAA_df <- read_csv("tbills_data/DAAA_df.csv")

DBAA_df <- read_csv("tbills_data/DBAA_df.csv")

DCOILWTICO <- read_csv("tbills_data/DCOILWTICO_df.csv")

write.csv(temp_table_dcast, file = paste0('company_stock_data/','stockprice.csv'))
