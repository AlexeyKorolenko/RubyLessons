require_relative 'gameplaybandit.rb'
gmb = GameplayBandit.new
puts "Добро пожаловать в игру \"Однорукий бандит\""
puts "Внесите средства (min: 10$ max: 10000$)"
cash = gets.chomp.to_i
while cash < 10 || cash > 10000
  if cash < 10 || cash > 10000
    puts "Вы ввели неверное значение, повторите снова!"
  end
  cash = gets.chomp.to_i
end

puts "Ваш банк составляет #{cash}$"
bet = gmb.action(cash)
#while bet == nil
# bet = gmb.action(cash)
#end

loop do
  puts "Выберите действие: \n1. Крутить \n2. Сменить ставку \n3. Выйти"
  chact = gets.chomp.to_i
  if chact == 1
    cash = gmb.roll(cash, bet)
  elsif chact == 2
    bet = gmb.action(cash)
  elsif chact == 3
    abort
  end
end