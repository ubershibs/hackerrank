require 'prime'

t = gets.strip.to_i
t.times do
  n = gets.strip.to_i
  p = Prime.take(n)
  puts p.last 
end
