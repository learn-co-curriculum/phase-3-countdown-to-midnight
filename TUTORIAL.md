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
In the `README` the instructions are to pass in an argument to our method. 
**NOTE:**`Wrong number of arguments (1 for 0)` means our countdown method expects from us that we pass in an argument. 

```ruby
def countdown(seconds_to_midnight)
end
```

The next error message is:

```bash
LOOPS
  #countdown
    outputs '<n> SECOND(S)!' string to STDOUT for each count (FAILED - 1)
    
    Failures:

  1) LOOPS #countdown outputs '<n> SECOND(S)!' string to STDOUT for each count
     Failure/Error: expect { countdown(10) }.to output(countdown_output).to_stdout
       expected block to output "10 SECOND(S)!\n9 SECOND(S)!\n8 SECOND(S)!\n7 SECOND(S)!\n6 SECOND(S)!\n5 SECOND(S)!\n4 SECOND(S)!\n3 SECOND(S)!\n2 SECOND(S)!\n1 SECOND(S)!\n" to stdout, but output nothing
       Diff:
       @@ -1,11 +1 @@
       -10 SECOND(S)!
       -9 SECOND(S)!
       -8 SECOND(S)!
       -7 SECOND(S)!
       -6 SECOND(S)!
       -5 SECOND(S)!
       -4 SECOND(S)!
       -3 SECOND(S)!
       -2 SECOND(S)!
       -1 SECOND(S)!

```

Again in the instructions it says after passing in the seconds to midnight our method should use a `while-loop` to check if the seconds we passed in are greater than 0, as long as that condition is true, it should countdown the seconds and decrement them every time (we will use the subtract-and-assign operator - explained in the README) the loop runs until 0. When we hit 0 it should say `"HAPPY NEW YEAR"`.

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

```bash
#countdown_with_sleep
    should take at least 5 seconds to execute (FAILED - 1)

Failures:

  1) LOOPS #countdown_with_sleep should take at least 5 seconds to execute
     Failure/Error: expect(runtime.real.to_i >= 5).to be true
       
       expected true
            got false

```

This method will also accept an argument and countdown those seconds until we hit 0. 

The hint in the `README` forward us to stackoverflow.com which tells us how to make our application sleep.

```ruby
sleep(num_secs)
```

The `sleep(num_sec)` accepts an argument of seconds. In our `countdown_with_sleep` method we will pass in `1`, so our application will only sleep one second between the iterations. 

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
