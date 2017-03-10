def guess_the_number()

  index = 0
  running = true
  text = 0
  dict = {}
  dict["easy"] = 10
  dict["medium"] = 20
  dict["hard"] = 50
  dict["extreme"] = 100

  string = "Please choose a difficulty, between Easy, Medium, Hard, & Extreme."
  while text < string.size
    print string[text]
    sleep(0.05)
    text +=1
  end
  text = 0

  puts ""

  choice = gets.chomp
  dif = dict[choice]

  string = "You have choosen " + choice.to_s + " difficulty, your guessing range is from 1 to " + dict[choice].to_s
  while text < string.size
    print string[text]
    sleep(0.05)
    text +=1
  end
  text = 0

  numb = rand(1..dif)

  while running == true
    puts ""
    string = "Please make a guess."
    while text < string.size
      print string[text]
      sleep(0.01)
      text +=1
    end
    text = 0
    puts ""

    butt = gets.chomp.to_i

    if butt == numb

      if index == 0
        string = "Good job, you guessed correctly on your first try."
        while text < string.size
          print string[text]
          sleep(0.05)
          text +=1
        end
        text = 0

      else
        string = "Good job, you guessed correctly. You guessed wrong " + index.to_s + " times"
        while text < string.size
          print string[text]
          sleep(0.05)
          text +=1
        end
      end

      #text = 0
      #string = "Would you like to play again? [Y/N]"
      #while text < string.size
        #print string[text]
        #sleep(0.05)
        #text +=1
      #end

      #re = gets.chomp

      #if re == "y"



    else
      if numb > butt
        string = "Incorrect, guess was too low."
        while text < string.size
          print string[text]
          sleep(0.01)
          text +=1
        end
        text = 0

        index += 1
      else
        string = "Incorrect, guess was too high"
        while text < string.size
          print string[text]
          sleep(0.01)
          text +=1
        end
        text = 0

        index += 1
      end
    end
  end
end
puts guess_the_number()
