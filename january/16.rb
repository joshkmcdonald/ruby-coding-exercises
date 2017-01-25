require 'rspec'

def array_rotation arr, num

  num.times do |x|
    arr.push(arr[x])
    arr[x] = nil
  end
  arr.compact
end

describe 'Array index change' do
  it 'Rotates the index values for each of the array elements' do
    expect(array_rotation([1, 2, 3], 2)).to eq([3, 1, 2])
  end
end

# Solution by Tyler
# implement in a loop
# .shift takes out first item
# arr.push(arr.shift)