class String
  def palindrome?
    self == self.reverse
  end
end

def integer_palindromes
  results = []
  999.downto(100) do |num1|
    999.downto(100) do |num2|
      product = num1 * num2
      if product.to_s.palindrome?
        results << product
      end
    end
  end
  results.sort!
  return results
end

palindromes = integer_palindromes

t = gets.chomp.to_i
t.times do
  n = gets.chomp.to_i
  potentials = palindromes.reject {|x| x >= n}
  puts potentials[-1]
end
