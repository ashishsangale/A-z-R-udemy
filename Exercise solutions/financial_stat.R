#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution

#profit for each month

profit <- revenue - expenses
profit

#profit after tax for eacch month (tax rate 30%)

tax <- round(profit*0.3, digits = 2)
tax

profit.after.tax <- profit - tax
profit.after.tax

#profit margin for each month -> EQUALS TO profit after tax divided by revenue

profit.margin <- round(profit.after.tax / revenue, digits = 2) * 100
profit.margin


#good months - where the profit after tax was greater than the mean for the year 

mean <- mean(profit.after.tax)
mean

g.month <- profit.after.tax > mean
g.month

#bad month - where the profit after tax was less than the mean for the year 

b.month <- !g.month
b.month

#best month - where the profit after tax was max for the year
best.month <- profit.after.tax == max(profit.after.tax)
best.month

#worst month - where the profit after tax was min for the year
worst.month <- profit.after.tax == min(profit.after.tax)
worst.month

#units of thousands 
revenue.1000 <- round(revenue/1000)
expenses.1000 <- round(expenses/1000)
profit.1000 <- round(profit/1000)
profit.after.tax.1000 <- round(profit.after.tax/1000)

#output


A <- rbind(revenue.1000,
            expenses.1000,
            profit.1000,
            profit.after.tax.1000,
            profit.margin,
            g.month,
            b.month,
            best.month,
            worst.month)

A


