# Guide to Solving Countdown to Midnight

The first error message we are getting after running `rspec` is: 

### `#countdown`

```bash
LOOPS
  #countdown
    outputs '<n> SECOND(S)!' string to STDOUT for each count (FAILED - 1)
    returns HAPPY NEW YEAR! (FAILED - 2)
  #countdown_with_sleep
    should take at least 5 seconds to execute (FAILED - 3)

Failures:

  1) LOOPS #countdown outputs '<n> SECOND(S)!' string to STDOUT for each count
     Failure/Error: expect { countdown(10) }.to output(countdown_output).to_stdout
     ArgumentError:
       wrong number of arguments (1 for 0)
```

`Wrong number of arguments (1 for 0)` means our countdown method expects from us that we pass in an argument.

```ruby
def countdown(seconds_to_midnight)
end
```

Now after passing in the seconds to midnight our method should use a `while-loop` to check if the seconds we passed in are greater than 0, as long as that condition is true, it should countdown the seconds and decrement them every time the loop runs until 0. When we hit 0 it should say `"HAPPY NEW YEAR"`.

```ruby
def countdown(seconds_to_midnight)
  while seconds_to_midnight > 0
    puts "#{seconds_to_midnight} SECOND(S)!"
    seconds_to_midnight -= 1
  end
  "HAPPY NEW YEAR!"
end
```

### `#countdown_with_sleep`

This method will also accept an argument and countdown those seconds until we hit 0. The only difference will be, our method will use a ruby method called `sleep`. The `sleep(num_sec)` accepts an argument of seconds. In our `countdown_with_sleep` method we will pass in `1`.


```ruby
def countdown_with_sleep(seconds_to_midnight)
  while seconds_to_midnight > 0
    puts "#{seconds_to_midnight} SECOND(S)!"
    sleep(1)
    seconds_to_midnight -= 1
  end
  "HAPPY NEW YEAR!"
end
```
Now all our tests should pass.
