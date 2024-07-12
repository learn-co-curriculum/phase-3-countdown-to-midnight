def countdown(num)
  until num == 0
    puts "#{num} SECOND(S)!"
    num -= 1
  end
  "HAPPY NEW YEAR!"
end

def countdown_with_sleep(num)
  while num > 0
    puts "#{num} SECOND(S)!"
    num -= 1
    sleep(1)
  end
  "HAPPY NEW YEAR!"
end
