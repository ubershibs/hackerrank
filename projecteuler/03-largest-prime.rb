t = gets.chomp.to_i
t.times do
  n = gets.chomp.to_i
  prime = n
  2.upto(Math.sqrt(n)) do |i|
    break if prime <= i
    prime /= i while (prime > i && prime % i == 0)
  end
  puts prime
end
