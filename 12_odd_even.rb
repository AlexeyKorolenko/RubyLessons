number = 482208
# odd = 1,3,5 нечетные числа
# even = 2,4,6 четные числа
# Вычисляем остаток от деления на два методом %,
# если остаток от деления равен нулю - число делится на 2
# if a % 2 == 0
if number.odd?
  puts "Число #{number} нечетное"
else
  puts "Число #{number} четное"
end