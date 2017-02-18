# done

require 'rspec'
require 'prime'

def prime_sum number
  prime_array = (2..number).to_a
  # using prime library
  # prime_array.keep_if {|num| num if Prime.prime?(num) }.sum
  # or using own is_prime? function
  prime_array.keep_if {|num| num if is_prime?(num) }.sum
end


def is_prime?(num)
   Math.sqrt(num).floor.downto(2).each {|i| return false if num % i == 0}
   true
end

describe 'Prime Sum' do
  it 'sums the sequence of prime numbers' do
    expect(prime_sum 22).to eq(77)
    expect(prime_sum 42).to eq(238)
  end
end

p prime_sum 5