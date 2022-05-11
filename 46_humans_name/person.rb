class Person
  # Конструктор вызывается при создании экземпляра класса из основной программы
  # с параметрами имя и отчество и записывает их в переменные экзепляра
  def initialize(first_name, second_name, age)
    @first_name = first_name
    @second_name = second_name
    @age = age
  end

  def full_name
    if @age < 60
      return "#{@first_name}, ему #{@age} он молодой"
    else
      return  "#{@first_name} #{@second_name}, ему #{@age} он пожилой"
    end
  end

end
