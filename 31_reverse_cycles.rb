array = [1, 2, 3, 4, 5, 6, 7]
reverse_array = []
# unshift делает то же самое, что и push (или <<), только добавляет элемент не в конец массива как обычно, а в начало
for item in array
  reverse_array.unshift(item)
end
puts array.to_s
puts reverse_array.to_s