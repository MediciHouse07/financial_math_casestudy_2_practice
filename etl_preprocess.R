stockprice <- read_csv("company_stock_data/stockprice.csv",
                       col_types = cols(`NA` = col_skip()))
tbills_df <- read_csv("tbills_data/tbills_df.csv")
names(tbills_df)[1] <- "Date"

combined <- merge(stockprice,tbills_df)

write.csv(combined, file = paste0('company_stock_data/','stockNtbills.csv'))
