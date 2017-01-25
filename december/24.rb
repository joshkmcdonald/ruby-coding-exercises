#done
require 'rspec'
require 'benchmark'

# arr = Array.new(100_000) { rand 1000 }

def new_max array_of_elements
                                  #is a > b? if so grab a, else grab b.
  # array_of_elements.inject{ |a,b| a > b ? a : b}

  max = 0
  array_of_elements.each do |i|
    if i > max
      max = i
    end
  end
  max
end

# Benchmark.bm(10) do |x|
#   x.report(':') {new_max arr}
# end


describe 'New Max method' do
  it 'returns the max value from an array efficiently' do
    test_array = [2, 4, 10, 3, 1]
    expect(new_max(test_array)).to eq(10)
  end
end
