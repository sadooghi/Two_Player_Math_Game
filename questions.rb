require 'active_support/all'

class Questions

  def initialize()
    @num1 = 1+rand(20)
    @num2 = 1+rand(20)
    @answer = @num1 + @num2
  end

  def ask
    puts "what is the sumation of #{@num1} and #{@num2}"
  end

  def check_answer (answer_to_check, p)
    if answer_to_check.to_i != @answer
      p.decrement_life
      puts "Remaining lives: #{p.life}"
    end
  end

end
