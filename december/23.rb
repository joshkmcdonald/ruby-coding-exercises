# done
require 'rspec'

def random_numbers
  # 20.times.map{ rand(1..999)}
  Array.new(20) { rand 1000 }
end

describe 'Random number collection generator' do
  it 'creates a collection of random numbers ranging from 0 to 999' do
    # Not a perfect test since there is a slight chance for duplicate
    # Arrays to be created
    random_set_one = random_numbers
    random_set_two = random_numbers
    expect(random_numbers.count).to eq(20)
    expect(random_set_one).to_not eq(random_set_two)
  end
end

p random_numbers