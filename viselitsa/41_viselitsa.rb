require_relative 'methods.rb'
cls
puts "Игра Виселица, версия 1.0"

letters = get_letters

errors = 0

bad_letters = []
good_letters = []

while errors < 7
  print_status(letters, good_letters, bad_letters, errors)

  puts "Введите букву"

  user_input = get_user_input

  result = check_result(user_input, letters, good_letters, bad_letters)

  if result == -1
    errors += 1
  elsif result == 1
    break
  end
end

print_status(letters, good_letters, bad_letters, errors)