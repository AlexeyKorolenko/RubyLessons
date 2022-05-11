class ActionBandit

  def cash
    cash = gets.chomp.to_i
    while cash < 10 || cash > 10000
      if cash < 10 || cash > 10000
        puts "Вы ввели неверное значение, повторите снова!"
      end
      cash = gets.chomp.to_i
    end
    cash
  end

  def bet(cash)
    puts "Выберите ставку: \n1. 10$ \n2. 50$ \n3. 100$ \n4. 500$ \n5. 1000$"
    choice = gets.chomp.to_i
      if choice == 1 && cash >= 10
        bet = 10
      elsif choice == 2 && cash >= 50
        bet = 50
      elsif choice == 3 && cash >= 100
        bet = 100
      elsif choice == 4 && cash >= 500
        bet = 500
      elsif choice == 5 && cash >= 1000
        bet = 1000
      elsif choice < 1 || choice > 5
        puts "Вы ввели неверное значение, повторите снова!"
        bet(cash)
      else
        puts "У вас не хватает средств на ставку. Ваш баланс сейчас #{cash}$"
        bet(cash)
      end
    # puts "Ваша ставка: #{bet}$"
    bet
  end
end