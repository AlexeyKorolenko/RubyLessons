def try_to_guess(answer, number)
  if answer == number
    abort "Вы угадали. Загаданое число было #{number}"
  else
    if answer > number
      puts "Меньше"
    else
      puts "Больше"
    end
    if (answer - number).abs < 3
      puts "Тепло"
    else
      puts "Холодно"
    end
  end
end
number = rand(17)
puts "Какое число я загадал?"
answer = gets.chomp.to_i
try_to_guess(answer, number)
answer = gets.chomp.to_i
try_to_guess(answer, number)
answer = gets.chomp.to_i
try_to_guess(answer, number)
abort "Вы не угадали число с 3-х попыток. Загаданое число было #{number}"


