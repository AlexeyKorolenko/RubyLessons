puts "Добро пожаловать в игру Миллионер"
puts "Как вас зовут?"
name = gets.chomp
puts "Приятно познакомться, #{name}, начинаем игру!"
puts "И-так первый вопрос!"
puts "Какой национальный цветок Японии?"
answer = nil
until answer == 1 || answer == 2 || answer == 3 || answer == 4 do
  puts "Выберите один из вариантов"
  sleep 1
  puts "1. Роза"
  sleep 1
  puts "2. Сакура"
  sleep 1
  puts "3. Нарцисс"
  sleep 1
  puts "4. Гвоздика"
  answer = gets.chomp.to_i
end
  if answer == 2
    puts "И это правильный ответ!!! Вы выиграли 100$
  Идем дальше!"
  else
    abort "К сожалению вы ответили не верно. На этом ваша игра закончена. До свидания!"
  end

puts "Следующий вопрос...
Какое национальное животное Австралии?"
answer = nil
until answer == 1 || answer == 2 || answer == 3 || answer == 4 do
  puts "Выберите один из вариантов"
  sleep 1
  puts "1. Коала"
  sleep 1
  puts "2. Панда"
  sleep 1
  puts "3. Жираф"
  sleep 1
  puts "4. Кенгуру"
  answer = gets.chomp.to_i
end
if answer == 4
  puts "И это правильный ответ!!! Вы выиграли 200$. Теперь ваш банк составляет 300$
Идем дальше!"
else
  abort "К сожалению вы ответили не верно. На этом ваша игра закончена. До свидания!"
end
puts "Следующий вопрос будет сложнее.
Какая валюта Дании?"
answer = nil
until answer == 1 || answer == 2 || answer == 3 || answer == 4 do
  puts "Выберите один из вариантов"
  sleep 1
  puts "1. Евро"
  sleep 1
  puts "2. Рупия"
  sleep 1
  puts "3. Крона"
  sleep 1
  puts "4. Доллар"
  answer = gets.chomp.to_i
  end
if answer == 3
  puts "И это правильный ответ!!! Ваш банк составляет 1000$
Сейчас, #{name}, Вы можете забрать свои деньги или сыграть в супер игру и побороться за главный приз в 10000$"
  choice = nil
until choice == 1 || choice == 2 do
  puts "Выберите один из вариантов"
  puts "1. Забрать деньги
2. Продолжить"
  choice = gets.chomp.to_i
  end
  if choice == 1
    abort "Вы решили не рисковать и забрать ваш приз в 1000$. До встречи!"
  else
    puts "Ну что ж, вижу в вас азарт! Тогда сыграем в СУПЕР ИГРУ!!! Внимание, вопрос!"
  end
else
  abort "К сожалению вы ответили не верно. На этом ваша игра закончена. До свидания!"
end
answer = nil
until answer == 1 || answer == 2 || answer == 3 || answer == 4 do
  puts "Выберите один из вариантов"
  sleep 1
  puts "Сколько элементов в периодической таблице менделеева?"
  sleep 1
  puts "1. 115"
  sleep 1
  puts "2. 118"
  sleep 1
  puts "3. 122"
  sleep 1
  puts "4. 124"
  answer = gets.chomp.to_i
end
if answer == 2
  abort "И это правильный ответ! #{name} победил в игре \"Миллионер\" и он получает свой приз в 10000$"
else
  abort "К сожалению это не правильный ответ.. Вы были очень близко к успеху"
end