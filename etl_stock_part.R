#source("fm_casestudy_1_0.r")
Sys.setenv(LANGUAGE = "en")

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


#GE <- read_csv("data/GE_Group_NonAdjust.csv",
#                                col_types = cols(...1 = col_date(format = "%Y-%m-%d")))%>%
#  tk_xts(date_var = ...1)

#plot(GE[,"Close"], ylab="Price",main="GE Stock", type="l")


#GE_df <- read_csv("data/GE_Group_NonAdjust.csv",
#               col_types = cols(...1 = col_date(format = "%Y-%m-%d")))
#BAC_df <- read_csv("data/BAC_Group_NonAdjust.csv",
#                  col_types = cols(...1 = col_date(format = "%Y-%m-%d")))

#Prices <- left_join(GE_df,BAC_df)

#GE_df_xts <- GE_df %>% tk_xts(date_var = ...1)


#BAC <- read_csv("data/BAC_Group_NonAdjust.csv",
#                col_types = cols(Open = col_skip(), High = col_skip(),
#                Low = col_skip(), Volume = col_skip()))

files <- list.files(path = "company_stock_data") # all the datas
target_name <- str_split_fixed(files, "_",n=3)[,1]

i <- 1
temp_table <- NA
while(i<=length(files))
{
  loop_table <- read_csv(paste0('company_stock_data/',files[i]),
           col_types = cols(Open = col_skip(), High = col_skip(),
                            Low = col_skip(), Volume = col_skip()))
  loop_table$Symbol <- target_name[i]
  temp_table <- rbind(temp_table,loop_table)
  loop_table <- NA
  print(paste0("You are processing ", target_name[i]))
  i <- i + 1
}

names(temp_table)[1] <- "Date"
temp_table <- temp_table[c('Date','Symbol','Close')]
temp_table_dcast <- dcast(temp_table, Date~Symbol) #dcast(md, ID+Time~variable)
head(temp_table_dcast)
head(temp_table)

write.csv(temp_table_dcast, file = paste0('company_stock_data/','stockprice.csv'))
