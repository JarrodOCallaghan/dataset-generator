# Generates a shuffled list of numbers, each number is unique from a .. b
# Only supports whole numbers, decimals wont work as they are infinite

def shufflenumberlist a, b
  current_time = Time.now.strftime('%Y-%m-%d %H-%m-%S')
  file = File.new("./Datasets/Unsorted NUM length TIME "+ current_time.to_s + ".txt","w")

  sorted_array = [*a..b]
  #length = sorted_array.length()

  sorted_array.length().times do
    array_index = rand (sorted_array.length())
    current_number = sorted_array[array_index]
    file.puts(current_number)
    sorted_array.delete_at(array_index)
  end
  
  file.close

end


puts "Enter starting number"
a = gets.to_i
puts "Enter ending number"
b = gets.to_i

shufflenumberlist(a,b)
