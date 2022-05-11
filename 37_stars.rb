puts "Сколько вам звездочек на погоны?"
answer = gets.chomp.to_i

def transformation(number)
  result = "*" * number
  puts result.to_s
end
puts "Вот ваши звезды:"
transformation(answer)