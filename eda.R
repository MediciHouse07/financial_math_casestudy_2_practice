library(readr)
stockNtbills_NoNA <- read_csv("company_stock_data/stockNtbills_NoNA.csv") %>% tk_xts(date_var = ...1)

View(stockNtbills_NoNA)

r.daily.GE<-zoo( x=as.matrix(diff(log(stockNtbills_NoNA[,"GE"]))),
                 order.by=time(stockNtbills_NoNA))
dimnames(r.daily.GE)[[2]]<-"r.daily.GE"
dim(r.daily.GE)
head(r.daily.GE)
