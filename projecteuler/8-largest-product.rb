t = gets.strip.to_i
for a0 in (0..t-1)
  n,k = gets.strip.split(' ')
  n = n.to_i
  k = k.to_i
  num = gets.strip.split('').map { |n| n.to_i }
  i = 0
  products = []
  while i < n - k
    products << num[i..i+k-1].reduce(1, :*)
    i += 1
  end
  puts products.sort.last
end
