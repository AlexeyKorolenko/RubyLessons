temp = ARGV[0]
if temp == nil
  puts "Какая сейчас температура?"
  temp = STDIN.gets.chomp.to_i
else
  temp = temp.to_i
end

season = ARGV[1]

if season == nil
  puts "Какой сейчас время года?
1. Зима
2. Весна
3. Лето
4. Осень"
  season = STDIN.gets.chomp.to_i
else
  season = season.to_i
end

if season == 3
  if temp >= 15 && temp <= 35
    puts "Лето, жара, поют соловьи"
  else
    puts "Хоть и лето, но соловьи не поют"
  end
else
  if temp >= 22 && temp <= 30
    puts "Поют соловьи, наслаждайся музыкой"
  else
    puts "Соловьи молчат"
  end
end