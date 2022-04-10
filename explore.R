library(readr)
stockNtbills <- read_csv("company_stock_data/stockNtbills.csv",
                         col_types = cols(...1 = col_skip(), ...3 = col_skip()))
#View(stockNtbills)

