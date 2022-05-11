cars = ["BMW", "Mercedes", "Toyota", "Mazda", "Kia", "Audi", "Volkswagen", "Mazeratti"]
puts "У нас есть 8 машин, введите номер желаемой марки"
choice = gets.chomp.to_i - 1
if choice >= 0 && choice < cars.size # size означает количество элементов массива
  puts "Вы выбрали марку #{cars[choice]}"
else
  puts "К сожалению, такого автомобиля у нас нету"
end