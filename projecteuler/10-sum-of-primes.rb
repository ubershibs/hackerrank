#!/bin/ruby
require 'prime'
sums = [2]
primes = []

def eratosthenes(n, primes)
  nums = [true, false, true] * ((n + 5) / 6)
  nums[0] = false
  nums[1] = true
  i = 5
  until (m = i * i) > n
    if nums[i >> 1]
      i2 = i << 1
      i4 = i << 2
      while m <= n
        nums[m >> 1] = false
        m += i2
        nums[m >> 1] = false
        m += i4  # When i = 5, skip 45, 75, 105, ...
      end
    end
    i += 2
    if nums[i >> 1]
      m = i * i
      i2 = i << 1
      i4 = i << 2
      while m <= n
        nums[m >> 1] = false
        m += i4  # When i = 7, skip 63, 105, 147, ...
        nums[m >> 1] = false
        m += i2
      end
    end
    i += 4
  end

  primes = [2]
  nums.each_index {|i| primes << (i * 2 + 1) if nums[i]}
  primes.pop while primes.last > n
  primes
end

def calc_sums(sums, primes)
  sums.length.upto(primes.length-1) do |i|
    sums[i] = primes[i] + sums[i - 1]
  end
  sums
end

def find_prime(n)
  for j in 1..Math.sqrt(n)
    i = n - j
    if Prime.prime?(i)
      return i
    end
  end
end

primes = eratosthenes(1000000, primes)
sums = calc_sums(sums, primes)

t = gets.strip.to_i
t.times do
  n = gets.strip.to_i
  m = find_prime(n)
  puts sums[primes.index(m)]
end

require 'benchmark'
Benchmark.bmbm {|x|
  x.report("eratosthenes2") { eratosthenes2(10_000_000, primes)}
}
