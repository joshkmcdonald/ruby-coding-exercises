# done
require 'rspec'

class String
  def alt_reverse
    arr = self.chars
    num = arr.length-1
    counter = 0

    loop do |x|
      break if counter >= num

      arr[counter], arr[num] = arr[num], arr[counter]

      counter += 1
      num -= 1
    end
    arr.join
  end
end

describe 'Letter reversing' do
  it 'reverses the letters of a string without using the reverse method' do
    expect("Hi there".alt_reverse).to eq("ereht iH")
  end
end