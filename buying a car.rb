def nbMonths(startPriceOld, startPriceNew, savingperMonth, percentLossByMonth)
    months = 1
    savings = 0
    leftover = 0
    decDecrease = (100.0 - percentLossByMonth)/100
    arr = [months, leftover.floor]
    if startPriceOld >= startPriceNew 
      return arr = [months-1, leftover = ((startPriceOld + savings)- startPriceNew).floor]
    end
      while startPriceOld < startPriceNew
              decDecrease -= 0.005 if months.even?
              startPriceOld *= decDecrease
              startPriceNew *= decDecrease
              savings += savingperMonth 
              months += 1
            if startPriceOld + savings > startPriceNew
              puts "winner! #{startPriceOld.round + savings} is greater than #{startPriceNew.round} - the cost of your new car after #{months} 
              months and you have #{leftover = ((startPriceOld + savings)- startPriceNew).round} left over"
              return arr = [months -1, leftover]
            else
          
        end
    end  
end