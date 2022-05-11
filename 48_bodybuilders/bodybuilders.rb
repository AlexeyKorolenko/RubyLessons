class Bodybuilders
  def initialize
    @arms = 0
    @legs = 0
    @chest = 0
  end

  def pump(muscle)
    case muscle
    when "arms"
      @arms += 1
    when "legs"
      @legs += 1
    when "chest"
      @chest += 1
    end
  end

  def show_muscle
    puts "Параметры: \nРуки: #{@arms}; \nНоги: #{@legs}; \nГрудь: #{@chest}"
  end

end