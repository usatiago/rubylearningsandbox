require 'money'

money = Money.new(1000, "USD")
more_money = Money.new(500, "USD")

all_money = money + more_money

puts all_money.inspect
