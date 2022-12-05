#write your code here

def countdown x
    while x > 0
        puts "#{x} SECOND(S)!"
        x -= 1
    end
    "HAPPY NEW YEAR!"
end

def countdown_with_sleep(x)
    while x > 0
        sleep(1)
        puts "#{x} SECOND(S)!"
        x -= 1
    end
    "HAPPY NEW YEAR!"
end

countdown 10
countdown 12
countdown_with_sleep 5