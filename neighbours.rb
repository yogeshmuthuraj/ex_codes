# matrix x
matrix_size_x = 3
matrix_size_y = 3

# initialising array
input_array = Array.new(matrix_size_x){Array.new(matrix_size_y)}

# getting the elements
matrix_size_x.times do |i|
  matrix_size_y.times do |j|
    puts "enter in element (#{i}, #{j})"
    input_array[i][j] = gets.chomp
  end
end

# getting the target element
puts 'enter the target element'
target_element = gets.chomp

# target location
sub_array = input_array.detect{|x| x.include?(target_element)}
row = sub_array.index(target_element)
column = input_array.index(sub_array)
puts "target location = (#{row}, #{column})"

# displaying the output
puts "The neighbour elements of #{target_element} in"
matrix_size_x.times do |i|
  matrix_size_y.times do |j|
    print " #{input_array[i][j]} "
  end
  puts " "
end
puts "are"

# logic
matrix_size_x.times do |i|
  matrix_size_y.times do |j|
    if target_element == input_array[i][j]
      print "|#{input_array[i][j]}|"
    elsif (i == column - 1 || i == column + 1 || i == column) && (j == row - 1 || j == row + 1 || j == row)
      print " #{input_array[i][j]} "
    else
      print "  "
    end
  end
  puts " "
end
