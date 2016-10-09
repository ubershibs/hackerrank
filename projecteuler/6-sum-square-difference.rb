def sum_of_squares(num)
  i = 0
  1.upto(num) do |n|
    i = i + n**2
  end
  i
end

def square_of_sums(num)
  i = 0
  1.upto(num) do |n|
    i = i + n
  end
  i = i**2
  i
end

t = gets.strip.to_i
t.times do
  n = gets.strip.to_i
  solution = square_of_sums(n) - sum_of_squares(n)
  puts solution
end
