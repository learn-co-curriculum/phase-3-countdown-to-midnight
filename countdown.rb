def countdown(i)
  while i >= 1
    puts "#{i} SECOND(S)!"
    i-= 1
  end
  "HAPPY NEW YEAR!"
end

def countdown_with_sleep(i)
  while i>= 1
    puts "#{i} SECOND(S)!"
    i -= 1
    sleep(1)
  end
  "HAPPY NEW YEAR"
end
