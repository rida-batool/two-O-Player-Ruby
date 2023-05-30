class MathProblem 

  def initialize
  end

  def generate_questions(current_player)
    number1 = rand(1..20)
    number2 = rand(1..20)
    puts "#{current_player.name}: What does #{number1} plus #{number2} is?"
    print "> "
    number1 + number2
  end

end


