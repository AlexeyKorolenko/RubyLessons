puts "Введите первое число"
a = gets.chomp.to_f
puts "Введите второе число"
b = gets.chomp.to_f
puts "Введите третье число"
c = gets.chomp.to_f
d = (a+b+c)/3
puts "Введеные числа: #{a},#{b},#{c}"
puts "Среднее арифметическое: #{d}"