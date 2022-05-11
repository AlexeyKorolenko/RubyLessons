require_relative 'printbandit.rb'
require_relative 'rollbandit.rb'
require_relative 'actionbandit.rb'
bprint = PrintBandit.new
broll = RollBandit.new
baction = ActionBandit.new
puts "Добро пожаловать в игру \"Однорукий бандит\""
puts "Внесите средства (min: 10$ max: 10000$)"
cash = baction.cash
bet = baction.bet(cash)