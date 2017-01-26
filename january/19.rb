# done
require 'rspec'

class Array
  def does_it_have? num
    # self.include?(num)
    swap = false

    self.each do |x|
      swap = true
      break if x == num
      swap = false
    end
    swap
  end
end

describe 'Include? clone' do
  it 'returns true if a supplied element is included in an array' do
    arr = [2, 5, 100, 4]
    expect(arr.does_it_have? 5).to eq(true)
    expect(arr.does_it_have? 20).to eq(false)
  end
end
