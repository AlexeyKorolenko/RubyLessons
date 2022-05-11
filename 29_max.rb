array = []
puts "Какой длинны должен быть массив?"
all = gets.chomp.to_i
index = 0
while index < all do
  index += 1
  array << rand(101)
end
puts array.to_s
puts "Максимальное значение в массиве: #{array.max}"
