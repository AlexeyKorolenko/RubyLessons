require_relative 'krokodile.rb'
kroko = Krokodile.new
# место для анимации
kroko.animation
puts "* * * Добро пожаловать в игру КРОКОДИЛ * * *"
puts "1. Играть \n2. Правила \n3. Выход из игры"
choice = gets.chomp.to_i
if choice == 1
  puts "И так начнем. Попробуй угадать какое слово я загадал?"
  kroko.restart_hash
elsif choice == 2
  puts "  * Игра загадывает слово и выдает вам подсказку.
  * У вас есть пять попыток угадать это слово.
  * После 3-х неудачных попыток игра выдаст вам подсказку.
  * В случае ввода 5-ти неправильных попыток вы проигрываете.
  Желаем удачи!"
else
  abort "Всего хорошего"
end