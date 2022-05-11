puts "Введите N"
array = []
n = gets.chomp.to_i
a = 0
summa = 0
while a != n do
  a += 1
  array << a
  summa += a
end
puts array.to_s
puts "Сумма чисел: #{summa}"