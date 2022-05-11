require_relative 'person.rb'

alex = Person.new("Алексей", "Гаврилович", 22)
fedor = Person.new("Федор", "Васильевич", 34)
vasya = Person.new("Василий", "Алибабаевич", 61)

puts "У нас есть три человека"
puts alex.full_name
puts fedor.full_name
puts vasya.full_name
