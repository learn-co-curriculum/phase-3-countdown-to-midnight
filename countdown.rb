def countdown(starting_count)
  while starting_count.positive?
    puts "#{starting_count} SECOND(S)!"
    starting_count -= 1
  end
  'HAPPY NEW YEAR!'
end

def countdown_with_sleep(sleep_num)
  count = 10
  while count.positive?
    sleep(sleep_num)
    puts "#{count} SECOND(S)!"
    count -= 1
  end
  'HAPPY NEW YEAR!'
end
