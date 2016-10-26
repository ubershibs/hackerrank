t = gets.strip.to_i
t.times do
  n = gets.strip.to_i
  p = 1
  s = 0
  n.downto(1) { |i| p = p * i }
  p_digits = p.to_s.split('').map(&:to_i)
  s = p_digits.reduce(:+)
  puts s
end
