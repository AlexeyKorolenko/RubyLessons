passanger = {
  :ticket => "№ 4655 4413",
  :name => "Илья", #Имя
  :surname => "Трофанов", #Фамилия
  :father_name => "Бенедикт", #Отчество
  :departure => "Оттуда", #Отправление
  :purpose => "До сюда", #Цель
  :passport => "РУ 987546"
}
puts "Билет: #{passanger[:ticket]}"
puts "Имя пассажира: #{passanger[:surname]} #{passanger[:name]} #{passanger[:father_name]}ович"
puts "Маршрут: #{passanger[:departure]} - #{passanger[:purpose]}"
puts "Пасспорт: #{passanger[:passport]}"