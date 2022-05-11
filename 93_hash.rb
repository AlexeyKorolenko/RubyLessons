# frozen_string_literal: true

puts 'Врага какого персонажа вы хотите узнать?'
answer = $stdin.gets.chomp.capitalize
heroes_antiheroes = {
  'Бэтмен' => 'Джокер',
  'Холмс' => 'Мориарти',
  'Буратино' => 'Карабас-Барабас'
}
# Динамически добавляем значение в хеш
heroes_antiheroes['Моцарт'] = 'Сальери'
# Удаляем значение из хеша
heroes_antiheroes.delete('Моцарт')

if heroes_antiheroes.key?(answer)
  puts "Враг этого героя: #{heroes_antiheroes[answer]}"
else
  puts 'Не удалось найти героя'
end
