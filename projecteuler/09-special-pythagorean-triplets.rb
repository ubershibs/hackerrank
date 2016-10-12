t = gets.strip.to_i
t.times do
  a = 1
  b = 1
  c = 1
  solutions = []
  n = gets.strip.to_i
  c = n / 2
  1.upto(c-1) do
    b = c - a
    if a**2 + b**2 == c**2
      solutions << (a * b * c)
    end
  end
  if solutions.length > 0
    puts solutions.max
  else
    puts (-1)
  end
end
