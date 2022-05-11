require_relative 'films.rb'

puts "Введите имя режиссера:"
director = gets.chomp
films = []
index = 0
loop do
  index += 1
  puts "Введите какой нибудь его фильм"
  film_name = gets.chomp
  # Создавать новый фильм этого режиссера (экземпляр класса Film), вызывая метод
  # new у класса Film и передавая ему в качеств параметров название фильма и
  # фамилию режиссера.
  film = Film.new(film_name, director)
  films << film
  break if index == 3
end

film = films.sample
puts "Посмотрите сегодня: #{film.title}"
puts "Режиссера: #{film.director}"