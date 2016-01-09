# Enter your procedural solution here!
def largest_prime_factor(limit)
  prime_factors(limit).last
end

def prime_factors(limit)
  primes = Array.new
  factors(limit).each do |factor|
    if prime?(factor)
      primes << factor
    end
  end
  primes
end

def prime?(number)
  prime = true
  2.upto(number-1) do |i|
    if number % i == 0
      prime = false
    end
  end
  prime
end

def factors(number)
  factor_array = Array.new
  2.upto(number-1) do |i|
    if number % i == 0
      factor_array << i
    end
  end
  factor_array
end