time = Time.now
today = time.wday #метод wday достает из объекта номер дня недели
if today == 0 || today == 6
  puts "Сегодня выходной"
else
  puts "За работу!"
end