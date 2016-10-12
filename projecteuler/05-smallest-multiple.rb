
t = gets.strip.to_i
for a0 in (0..t-1)
    n = gets.strip.to_i
    puts (1..n).inject(:lcm)
end
