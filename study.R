#source("fm_casestudy_1_0.r")

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


GE <- read_csv("data/GE_Group_NonAdjust.csv",
                                col_types = cols(...1 = col_date(format = "%Y-%m-%d")))%>%
  tk_xts(date_var = ...1)

plot(GE[,"Close"], ylab="Price",main="GE Stock", type="l")


GE_df <- read_csv("data/GE_Group_NonAdjust.csv",
               col_types = cols(...1 = col_date(format = "%Y-%m-%d")))
BAC_df <- read_csv("data/BAC_Group_NonAdjust.csv",
                  col_types = cols(...1 = col_date(format = "%Y-%m-%d")))

Prices <- left_join(GE_df,BAC_df)

GE_df_xts <- GE_df %>% tk_xts(date_var = ...1)
