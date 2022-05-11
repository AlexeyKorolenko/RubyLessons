def cls
  system "clear" or system "cls "
end



# этот метод возвращает массив букв из того слова которое загадал пользователь
def get_letters

  slovo = ARGV[0]

  if slovo == nil || slovo == ""
    abort "Вы не ввели слово для игры"
  end
  # split возвращает слово разбитое на массив букв
  return slovo.split("")
end

# Метод get_user_input занимается тем, что спрашивает у пользователя,
# какую букву он хочет попробовать в качестве следующего хода.
def get_user_input
  letter = ""
  while letter == "" do
    letter = STDIN.gets.chomp
  end
  return letter
end

# Метод check_result проверяет введенную пользователем букву и кладет её в один
# из двух массивов — с «хорошими» буквами, которые есть в слове, и «плохими»,
# которых в слове нет.
def check_result(user_input, letters, good_letters, bad_letters)
  if good_letters.include?(user_input) || bad_letters.include?(user_input)
    return 0
  end

  if letters.include?(user_input) ||
    (user_input == "е" && letters.include?("ё")) ||
    (user_input == "ё" && letters.include?("е")) ||
    (user_input == "и" && letters.include?("й")) ||
    (user_input == "й" && letters.include?("и"))

    good_letters << user_input

    if user_input == "е"
      good_letters << "ё"
    end

    if user_input == "ё"
      good_letters << "е"
    end

    if user_input == "и"
      good_letters << "й"
    end

    if user_input == "й"
      good_letters << "и"
    end

    # условие когда отгаданно все слово
    if (letters - good_letters).empty?
      return 1
    else
      return 0
    end
  else
    bad_letters << user_input
    return -1
  end
end

def get_word_for_print(letters, good_letters)
  result = ""
  for letter in letters do
    if good_letters.include? letter
      result += letter + " "
    else
      result += "__"
    end
  end
  return result
end

# Метод print_status выводит на экран текущий статус игры. В качестве входных
# параметром ему нужна все доступная информация об игре: массив загаданного
# слова, массивы «хороших» и «плохих» букв и общее число сделанных ошибок.
def print_status(letters, good_letters, bad_letters, errors)
  puts "\nСлово: #{get_word_for_print(letters, good_letters)}"

  #join выводит все элементы массива в строку, разделяя их тем что идет в параметрах этого метода
  puts "Ошибки (#{errors}): #{bad_letters.join(", ")}"

  if errors >= 7
    puts "Вы проиграли"
  else
    if good_letters.sort == letters.uniq.sort
      puts "Поздравляем! Вы выиграли!"
    else
      puts "У вас осталось попыток: " + (7 - errors).to_s
    end
  end
end
