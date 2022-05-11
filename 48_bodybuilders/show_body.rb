require_relative 'bodybuilders.rb'
first_builder = Bodybuilders.new
second_builder = Bodybuilders.new
third_builder = Bodybuilders.new

# Качаем первому трицепс 5 раз. Для этого воспользуемся методом .times у целого числа.
5.times do
  first_builder.pump("arms")
end

3.times do
  first_builder.pump("legs")
end

7.times do
  first_builder.pump("chest")
end

2.times do
  second_builder.pump("arms")
end

6.times do
  second_builder.pump("legs")
end

4.times do
  second_builder.pump("chest")
end

6.times do
  third_builder.pump("arms")
end

5.times do
  third_builder.pump("legs")
end

3.times do
  third_builder.pump("chest")
end

puts "Первый бодибилдер:"
first_builder.show_muscle
p
puts "Второй бодибилдер:"
second_builder.show_muscle
p
puts "Третий бодибилдер:"
third_builder.show_muscle