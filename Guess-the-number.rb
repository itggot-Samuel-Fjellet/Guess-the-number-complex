def guess_the_number()

  index = 0
  running = true
  dict = {}
  dict["easy"] = 10
  dict["medium"] = 20
  dict["hard"] = 50
  dict["extreme"] = 100

  puts "Please choose a difficulty, between Easy, Medium, Hard, & Extreme."
  dif = dict[gets.chomp]

  numb = rand(1..dif)

  while running == true
    puts "Please make a guess."
    butt = gets.chomp.to_i

    if butt == numb
      running = false

    else
      if numb > butt
        puts "Incorrect, guess was too low."
        index += 1
      else
        puts "Incorrect, guess was too high"
        index += 1
      end
    end
  end

  if index == 0
    puts "Good job, you guessed correctly on your first try."

  else
    puts "Good job, you guessed correctly. You guessed wrong " + index.to_s + " times."
  end
end
puts guess_the_number()
