number = ARGV[0].to_i

def circle_square(radius)
  square = 3.14 * radius * radius
  puts "Площадь круга:"
  puts square.to_f
end

if number == 0
  puts "Введите радиус круга:"
  number = STDIN.gets.chomp.to_f
end
puts circle_square(number)
puts "Введите радиус второго круга:"
number = STDIN.gets.chomp.to_f
puts circle_square(number)
