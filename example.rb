# frozen_string_literal: true

puts 'Врага какого персонажа вы хотите узнать?'
answer = gets.chomp.capitalize

case answer
when 'Бэтмен', 'Бетмен', 'Batman'
  puts 'Злодей: Джокер'
when 'Гарри Поттер', 'Поттер', 'Гарри', 'Harry Potter', 'Harry', 'Potter'
  puts 'Злодей: Волан де Морт'
when 'Буратино'
  puts 'Злодей: Карабас - Барабас'
when 'Фродо', 'Беггинс', 'Frodo', 'Baggins'
  puts 'Злодей: Саурон'
else
  puts 'Персонаж не найден'
end
