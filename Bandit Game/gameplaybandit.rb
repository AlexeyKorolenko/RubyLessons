class GameplayBandit

  def initialize
    @bet = nil
    @cash = nil
  end

  def action(cash)
    puts "Выберите ставку: \n1. 10$ \n2. 50$ \n3. 100$ \n4. 500$ \n5. 1000$"
    choice = gets.chomp.to_i
    if choice == 1 && cash >= 10
      bet = 10
      puts "Ваша ставка: #{bet}$"
    elsif choice == 2 && cash >= 50
      bet = 50
      puts "Ваша ставка: #{bet}$"
    elsif choice == 3 && cash >= 100
      bet = 100
      puts "Ваша ставка: #{bet}$"
    elsif choice == 4 && cash >= 500
      bet = 500
      puts "Ваша ставка: #{bet}$"
    elsif choice == 5 && cash >= 1000
      bet = 1000
      puts "Ваша ставка: #{bet}$"
    elsif choice < 1 || choice > 5
      puts "Вы ввели неверное значение, повторите снова!"
      action(cash)
    else
      puts "У вас не хватает средств на ставку. Ваш банк сейчас #{cash}$"
      action(cash)
    end
    bet.to_i
  end

  def roll(cash, bet)
    if cash >= bet
      sleep 0.5
      x = rand(0..9)
      y = rand(0..9)
      z = rand(0..9)
      print "| #{x} |"
      sleep 0.5
      print" #{y} |"
      sleep 0.5
      print " #{z} |\n"
      sleep 0.5
    elsif cash < bet && cash >= 10
      puts "Не хватает денег на ставку. Ваш баланс: #{cash}$"
      action(cash)
    else
      abort "На счету не хватает средств! Ваш баланс: #{cash}$"
    end

    if x == y && x == z
      cash = cash - bet
      cash = cash + (bet * 10)
      puts "Выпало счастливое число - #{x}#{y}#{z} !!! Ваш выиграш составил #{bet * 10}. \nВаш баланс сейчас #{cash}"
    elsif (x == y && x != z) || (x == z && x != y) || (z == y && z != x)
      puts "Неплохо, выпало число - #{x}#{y}#{z} !!! Ваш выиграш составил #{bet}. \nВаш баланс сейчас #{cash}"
    else
      puts "Попробуй еще, может повезет.\nВаш баланс сейчас #{cash}"
    end
    cash.to_i
  end


  def cash
    @cash
  end
  def bet
    @bet
  end
end