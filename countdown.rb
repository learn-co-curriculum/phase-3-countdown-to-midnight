#write your code here

def countdown starting_int
  while starting_int > 0
    puts "#{starting_int} SECOND(S)!"
    starting_int -= 1
  end
  "HAPPY NEW YEAR!"
end

def countdown_with_sleep starting_int
  while starting_int > 0
    puts "#{starting_int} SECOND(S)!"
    starting_int -= 1
    sleep 1
  end
  "HAPPY NEW YEAR!"
end
