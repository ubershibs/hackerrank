sums = [1]
factors = [[1]]

def divisors_of(num)
  (1..num).select { |n| num % n == 0}
end

t = gets.strip.to_i
t.times do
  num = gets.strip.to_i
  sum_factors = []
  until sum_factors.length == num do
    i = sums.length + 1;
    sums << sums.last + i
    sum_factors = divisors_of(sums.last)
    factors << sum_factors
  end
  puts sums.last
end
