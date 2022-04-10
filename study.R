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
library(stringr)


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


BAC <- read_csv("data/BAC_Group_NonAdjust.csv",
                col_types = cols(Open = col_skip(), High = col_skip(),
                Low = col_skip(), Volume = col_skip()))

files <- list.files(path = "data") # all the datas
target_name <- str_split_fixed(files, "_",n=3)[,1]
i <- 0
while(i<=length(vec))
{

}
