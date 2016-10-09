# Enter your code here. Read input from STDIN. Print output to STDOUT
 t = gets.chomp.to_i

 t.times do
  max = gets.chomp.to_i
  i = 2
  seq = [1]
  while i <= max do
    seq << i
    i = seq[-2] + seq[-1]
  end
  p seq
  total = seq.inject(0) {|sum, n| n.even? ? sum + n : sum}
  puts total
end
