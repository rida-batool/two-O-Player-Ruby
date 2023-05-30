require './players'
require './math_problem'

player1 = Players.new("Player1")
player2 = Players.new("Player2")
allPlayers = [player1, player2]
questions = MathProblem.new

index = 0
@current_player = allPlayers[index]

while(player1.lives > 0 || player2.lives > 0)
  puts "--------NEW TRUN-----------"
  add = questions.generate_questions(@current_player)
  answer = gets.chomp.to_i
    if (answer == add)
      puts "#{@current_player.name}: You are correct"
    else 
      puts "#{@current_player.name}: Incorrect!"
      @current_player.reduce_life
    end

  # show_scores
  puts "P1: #{player1.lives}/3 VS P2: #{player2.lives}/3"


  #Game-Over
  if @current_player.lives == 0
    if (@current_player.name == 'player1')
      puts "Player2 wins with #{player2.lives}/3 lives"
      puts "-----GAME OVER-----"
    else
      puts "Player1 wins with #{player1.lives}/3 lives"
      puts "-----GAME OVER-----"
    break
    end
  end

  #switch players
  if index == 0
    index = 1
  else
  index = 0
  end
  @current_player = allPlayers[index]

end

