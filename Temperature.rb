require 'colorize'

current_temp = 8

if current_temp > 0
   #Say it's above freezing if current temperature is above 0
   puts "It is above freezing.".light_green
else current_temp <= 0
   #Say it's winter if current temperature is less than 0
   puts "winter has come.".blue
end

# Challenge 1. Get temperature from user
puts "Please enter a temperature in Celsius as a floating point number:"
temp = gets
temp = temp.to_f

# Challenge 2. Output to screen in different colors depending on temperature
if temp > 30.0
    puts "Temperature above 30".red
elsif temp > 20.0 && temp < 30.0
    puts "Temperature between 20 and 30".yellow
elsif temp > 10.0 && temp <20.0
    puts "Temperature above 10 and 20".cyan
else
   puts "Temperature is less than 10".blue
end

# Challenge 3. Convert temperature to Farenheit
temp_in_f = temp * 1.8 + 32.0
puts "Temperature in Farenheit is: #{temp_in_f}"
