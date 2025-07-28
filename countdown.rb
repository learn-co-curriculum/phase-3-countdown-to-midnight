#write your code here

def countdown(number = 10)
  while number > 0 do
    puts "#{number} SECOND(S)!"
    number -= 1
  end
  return "HAPPY NEW YEAR!"
end

def countdown_with_sleep(number, sleep_time = 1)
  while number > 0 do
    puts "#{number} SECOND(S)!"
    sleep(sleep_time)
    number -= 1
  end
end 
