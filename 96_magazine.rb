# frozen_string_literal: true

magazine = {
  'Яблоки' => 10,
  'Бананы' => 4,
  'Дыня' => 1
}

magazine2 = {
  'Тарелки' => 5,
  'Салфетки' => 2,
  'Стаканчики' => 20
}
# merge объеденяет два асс. массива
buy = magazine.merge(magazine2)

puts buy
