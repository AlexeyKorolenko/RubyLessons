puts "Добро пожаловать в игру Камень - Ножницы - Бумага"
puts "Сделайте ваш выбор
0. Камень
1. Ножницы
2. Бумага"
array = ["Камень", "Ножницы", "Бумага"]
choice = gets.chomp.to_i
computer = rand (3)
if choice == 0 && computer == 1
  puts "Вы победили"
elsif choice == 1 && computer == 2
  puts "Вы победили"
elsif choice == 2 && computer == 0
  puts "Вы победили"
elsif choice == computer
  puts "Ничья"
else
  puts "Победил компьютер"
end
puts "Вы выбрали: #{array[choice]}"
puts "Компьютер выбрал: #{array[computer]}"