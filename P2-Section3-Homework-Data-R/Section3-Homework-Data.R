#Data
revenue <- c(14574.49, 7606.46, 8611.41, 9175.41, 8058.65, 8105.44, 11496.28, 9766.09, 10305.32, 14379.96, 10713.97, 15433.50)
expenses <- c(12051.82, 5695.07, 12319.20, 12089.72, 8658.57, 840.20, 3285.73, 5821.12, 6976.93, 16618.61, 10054.37, 3803.96)

#Solution
profit <- revenue - expenses
profit
profitAfterTax <- profit - (profit*0.3)
profit
profitMarigin <- round((profitAfterTax/revenue)*100, 0)
profitMarigin
meanProfitAfterTax <- mean(profitAfterTax)
meanProfitAfterTax
i <- 1
goodMonths  <- c()
for(x in profitAfterTax){
  if(meanProfitAfterTax < x){
    goodMonths <- c(goodMonths, month.name[i])
  }
  i <- i + 1
}
goodMonths
i <- 1
badMonths  <- c()
for(x in profitAfterTax){
  if(meanProfitAfterTax > x){
    badMonths <- c(badMonths, month.name[i])
  }
  i <- i + 1
}
badMonths

bestMonth <- month.name[match(max(profitAfterTax), profitAfterTax)]
bestMonth
worstMonth <- month.name[match(min(profitAfterTax), profitAfterTax)]
worstMonth
