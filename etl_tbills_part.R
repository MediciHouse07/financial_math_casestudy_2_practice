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


DGS1_df <- data.frame(DGS1)
DGS5_df <- data.frame(DGS5)
DGS10_df <- data.frame(DGS10)
DAAA_df <- data.frame(DAAA)
DBAA_df <- data.frame(DBAA)
DCOILWTICO_df <- data.frame(DCOILWTICO)

write.csv(temp_table_dcast, file = paste0('company_stock_data/','stockprice.csv'))
