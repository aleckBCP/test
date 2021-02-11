### Daily EXAM 4 Question 1

transactions <- fread("/Users/amalek/Desktop/UZH MASTERS/FS 2021/R - A non-technical introduction with applications to Marketing/Day 1/transactions.csv")

### transactions[, TransDate:=dmy(TransDate, tz="UTC")]

profvis({transactions$TransDate <-  dmy(transactions$TransDate, tz="UTC")
transactions$TransDate_floor <- floor_date(transactions$TransDate, "month")
date_floor <- floor_date(ymd("2012-12-09", tz="UTC"), "month")
transactions$Profit_Customer <-  transactions$PurchAmount - transactions$Cost
x_profit_month <- transactions[, list(Profit_Customer_floor= sum(Profit_Customer)), by=.(TransDate_floor)]})


profvis({
transactions[, TransDate:=dmy(TransDate, tz="UTC")]
transactions$TransDate_floor <- floor_date(transactions$TransDate, "month") 

date_floor <- floor_date(ymd("2012-12-09", tz="UTC"), "month")

transactions$Profit_Customer <-  transactions$PurchAmount - transactions$Cost

x_profit_month <- transactions[, list(Profit_Customer_floor= sum(Profit_Customer)), by=.(TransDate_floor)]})




