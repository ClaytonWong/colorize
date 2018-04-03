# Include 'terminal-table' gem
require 'terminal-table'

# Include 'colorize' gem
require 'colorize'

days = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday', 'Sunday']
temps_in_c = []
temps_in_f = []
rows = []
index = 0

# Loop that asks user to enter temperature in Celsius for different days of the week
# then stores those values into temps_in_c array
days.each do |day|
    puts "Enter temperature in celcius for #{day}"
    temp = gets
    
    # Convert temp into a floating point number then insert into temps_in_c array
    temps_in_c << temp.to_f
end

# Loop that calculates temperatures in farenheit for different days of the week
# using previously entered values. Temperatures in Farenheit are stored into
# temps_in_f array
days.each do |day|
    # Calculate temperatures in Farenheit
    temps_in_f[index] = temps_in_c[index] * 1.8 + 32.0
    
    # also output day of week 
    puts "#{day}"
    
    # then print out temperatures in celsius then in farenheit
    print "Temperature in Celcius: #{temps_in_c[index]} "
    print "Temperature in Farenheit: #{temps_in_f[index]}"
    
    # Create new line
    puts ""
    
    index = index + 1
end

# Loop that prints out days of week with that day's temperature in Celcius & Farenheit
# in 'terminal-table' format. Color of temperature printed out depends on it's value
# in Celcius.
# Floating point numbers in arrays temps_in_c & temps_in_f are converted to strings
# before printing in different colors 
index = 0
temps_in_c.each do |temp_in_c|
    if temp_in_c >= 30
       
       # If temperature in C is 30 or higher, print values in red
       rows << [days[index], temp_in_c.to_s.red, temps_in_f[index].to_s.red]
    
    elsif temp_in_c >= 20.0 && temp_in_c < 30.0
       
       # If temperature in C is equal to 20 or higher but less than 30, print in yellow
       rows << [days[index], temp_in_c.to_s.yellow, temps_in_f[index].to_s.yellow]
    
    elsif temp_in_c >= 10.0 && temp_in_c <20.0
       
       # If temperature in C is equal to 10 or higher but less than 20, print in cyan       
       rows << [days[index], temp_in_c.to_s.cyan, temps_in_f[index].to_s.cyan]
    else
       
       # Temperature in C is less then 10, so print in blue
       rows << [days[index], temp_in_c.to_s.blue, temps_in_f[index].to_s.blue] 

    end
    # Increment index by 1
    index = index + 1   
end
# Create terminal-table proper
table = Terminal::Table.new :headings => ['Day of week', 'Deg. C', 'Deg. F'], :rows => rows
puts table
