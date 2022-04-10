Sys.setenv(LANGUAGE = "en")
library(readr)
library(timetk)

stockNtbills <- read_csv("company_stock_data/stockNtbills.csv",
                         col_types = cols(...1 = col_skip(), ...3 = col_skip())) %>% tk_xts(date_var = Date)
#View(stockNtbills)

plot(stockNtbills[,"SP500"], ylab="Price",main="S&P500", type="l")

apply(is.na(stockNtbills)==TRUE, 2,sum)
stockNtbills_na<-na.locf(stockNtbills)
apply(is.na(stockNtbills_na)==TRUE, 2,sum)
View(stockNtbills_na)

write.csv(stockNtbills_na, file = paste0('company_stock_data/','stockNtbills_NoNA.csv'))
