#done
require 'rspec'
class Array

  def bubble_sort
      n = self.length
      arr = self
    loop do
      swapped = false

      (n-1).times do |i|
        if arr[i] > arr[i+1]
          arr[i], arr[i+1] = arr[i+1], arr[i]
          swapped = true
        end
      end

      break if not swapped
    end
    
    arr
  end
  # def bubble_sort
  #   self.sort! {|x,y| x <=> y }

  # end

end

describe 'Adding bubble sort to the Array class' do
  it 'Properly sorts an array' do
    arr = [4, 1, 6, 10, 44, 2, 3]
    expect(arr.bubble_sort).to eq(arr.sort)
  end
end
