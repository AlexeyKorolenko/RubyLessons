# frozen_string_literal: true

passangers = {
  ticket: '№ 4655 4413',
  name: 'Илья', # Имя
  surname: 'Трофанов', # Фамилия
  father_name: 'Бенедиктович', # Отчество
  departure: 'Оттуда', # Отправление
  purpose: 'До сюда',  # Цель
  passport: 'РУ 987546'
},
             {
               ticket: '№ 4655 4414',
               name: 'Изольда', # Имя
               surname: 'Лапенко', # Фамилия
               father_name: 'Александровна', # Отчество
               departure: 'Мурашки', # Отправление
               purpose: 'Букашки', # Цель
               passport: 'ВА 713509'
             },
             {
               ticket: '№ 4655 4415',
               name: 'Григорий', # Имя
               surname: 'Лепс',  # Фамилия
               father_name: 'Иванович', # Отчество
               departure: 'Загорье', # Отправление
               purpose: 'Залесье',  # Цель
               passport: 'ЛЕ 5410068'
             }

passangers.each_with_index do |passanger, index|
  puts "Место №#{index + 1}"
  puts "Билет: #{passanger[:ticket]}"
  puts "Имя пассажира: #{passanger[:surname]} #{passanger[:name][0]}. #{passanger[:father_name]}"
  puts "Маршрут: #{passanger[:departure]} - #{passanger[:purpose]}"
  puts "Пасспорт: #{passanger[:passport]}"
end
