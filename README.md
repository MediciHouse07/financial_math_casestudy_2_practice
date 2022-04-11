# financial_math_casestudy_2_practice

# Q&A
- Q: What is the difference between "commit"" and "sign off"" in git
- Q: What is excess return?
  - A: excess returns (over riskfree rate)

# Termnology
- Market Yield on U.S. Treasury Securities at 3-Month Constant Maturity (DGS3MO)[Link](https://fred.stlouisfed.org/series/DGS3MO)

[How to control version of code](https://www.w3docs.com/snippets/git/how-to-revert-a-git-repository-to-a-previous-commit.html#:~:text=To%20go%20back%20to%20an%20older%20commit%20temporarily%2C,is%2C%20leave%20you%20with%20no%20branch%20checked%20out.)


# Tips
#### A way to load file in Kaggle, then you can download it from the site
write.csv(table, file = "/kaggle/working/table.csv")
#### Set bug notification in Eng
Sys.setenv(LANGUAGE = "en")
#### Others
- %m/%d/%Y
- %Y-%m-%d
#### Use markdown to draw flow chart
[link](https://www.jianshu.com/p/02a5a1bf1096)

# Findings
- [How to report an issue](https://www.cnblogs.com/chenmingjun/p/8556908.html)
- [Where to find a good project and contribute](https://www.cnblogs.com/chenmingjun/p/8556378.html)
- [Download GE from Yahoo](https://finance.yahoo.com/quote/GE/history?period1=946857600&period2=1649462400&interval=1d&filter=history&frequency=1d&includeAdjustedClose=true)
- Exxon Mobil Corporation (XOM)
- 安科特纳；捷迪讯 JDSU from dictionary
- Eng R studio? [Link](https://d.cosx.org/d/421108-rstudio/7)
- In the data source of GE, there are 6 digits in the decimal
- Statistics like "dffits" can be found in ?influence.measures
- "is.inf" means if the observations are influential
# Progress review
- Downloaded bills data from case study recommended source
- JDSU was failed to be found, doesn't know what is the reason
- Other stock besides JDSU
  - one seperate for 3 stocks, Non adjusted was checked in the Yahoo
  - another combined with 3 , adjusted, checked in Yahoo
  - both are different with Case study
- Though the data is different, while the stock trend for GE is the same as case study showed
- GE and SP500 in the data source are different with case study text book, both GE and SP500 are from getyahoo, the parameter of adjust is False
- Downloaded the book "Regression Diagnostics" Belsley, Welsch, 1980
- "Regression Dianostic" 25/314 Since the estimated coefficients are often 
of primary interest to users of regression models, we look first at the 
change in the estimated regression coefficients that would occur if the ith 
row were deleted. - this is dfbeta
