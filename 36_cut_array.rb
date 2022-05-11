array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
puts "Исходный массив: \n#{array}"
puts "Сколько первых элементов вам отрезать?"
choice = gets.chomp.to_i

def cut_array(number, array)
  puts "Ваш массив: #{array.take(number).to_s}"
end

puts cut_array(choice,array)