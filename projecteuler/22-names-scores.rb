alphabet = %w(0 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z)

t1 = gets.strip.to_i
names = []
t1.times do
  name = gets.strip.upcase
  names << name
end
names = names.sort

t2 = gets.strip.to_i
t2.times do
  name = gets.strip.upcase
  n_index = names.index(name)
  n_arr = name.split('')
  n_arr_d = n_arr.map {|i| i = alphabet.index(i)}
  sum = n_arr_d.reduce(:+)
  puts sum * (n_index + 1)
end
