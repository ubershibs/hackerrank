n = gets.chomp.to_i
n.times do
  num = gets.chomp.to_i - 1
  total = (num/3).floor*(3+3*(num/3).floor)/2
  total += (num/5).floor*(5+5*(num/5).floor)/2
  total -= (num/15).floor*(15+15*(num/15).floor)/2
  puts total
end
