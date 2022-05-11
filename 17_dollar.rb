puts "Какая валюта у вас на руках?
1. Гривны
2. Доллары"
choice = gets.chomp.to_f
if choice == 1
  puts "Сколько сейчас стоит 1 доллар в гривнах?"
  dollar = gets.chomp.to_f
  puts "Сколько у вас гривен?"
  money = gets.chomp.to_f
  # округляем методом round до 2-го знака после запятой (до центов)
  cash = (money/dollar).round(2)
  puts "У вас #{cash}$"
else
  puts "Сколько сейчас стоит 1 доллар в гривнах?"
  dollar = gets.chomp.to_f
  puts "Сколько у вас долларов?"
  money = gets.chomp.to_f
  cash = (money * dollar).round(2)
  puts "У вас #{cash} гривен"
end

