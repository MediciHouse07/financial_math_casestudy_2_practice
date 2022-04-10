library(readr)
stockNtbills_NoNA <- read_csv("company_stock_data/stockNtbills_NoNA.csv") %>% tk_xts(date_var = ...1)

View(stockNtbills_NoNA)

r.daily.GE<-zoo( x=as.matrix(diff(log(stockNtbills_NoNA[,"GE"]))),
                 order.by=time(stockNtbills_NoNA))
dimnames(r.daily.GE)[[2]]<-"r.daily.GE"
dim(r.daily.GE)
head(r.daily.GE)
r.daily.GE <- r.daily.GE[-1]
View(r.daily.GE)

r.daily.SP500<-zoo( x=as.matrix(diff(log(stockNtbills_NoNA[,"SP500"]))),
                 order.by=time(stockNtbills_NoNA))
dimnames(r.daily.SP500)[[2]]<-"r.daily.SP500"
dim(r.daily.SP500)
head(r.daily.SP500)
r.daily.SP500 <- r.daily.SP500[-1]
View(r.daily.SP500)


# Compute daily return of the risk-free asset
#     accounting for the number of days between successive closing prices
#     apply annual interest rate using 360 days/year (standard on 360-day yearsince the previous close)

r.daily.riskfree<-log(1 + .01*coredata(stockNtbills_NoNA[-1,"DGS3MO"]) *
                        diff(as.numeric(time(stockNtbills_NoNA)))/360)
dimnames(r.daily.riskfree)[[2]]<-"r.daily.riskfree"
dim(r.daily.riskfree)


# Compute excess returns (over riskfree rate)

r.daily.GE.0<-r.daily.GE - r.daily.riskfree
dimnames(r.daily.GE.0)[[2]]<-"r.daily.GE.0"

r.daily.SP500.0<-r.daily.SP500 - r.daily.riskfree
dimnames(r.daily.SP500.0)[[2]]<-"r.daily.SP500.0"

# Merge all the time series together,
#     and display first and last sets of rows
r.daily.data0<-merge(r.daily.GE, r.daily.SP500, r.daily.riskfree,
                     r.daily.GE.0, r.daily.SP500.0)

head(r.daily.data0)
tail(r.daily.data0)

#Now we plot the excess returns of GE vs those of the SP500:

plot(r.daily.SP500.0, r.daily.GE.0)
abline(h=0,v=0)
