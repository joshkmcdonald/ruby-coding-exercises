# done
require 'rspec'

class Array
  def value_included? str
    swap = false

    self.each do |x|
      swap = true
      break if x.value?(str)
      swap = false 
    end
    swap
  end
end

describe 'Collection search' do
  it 'checks to see if a value is included in any number of hashes nested inside an array' do
    books = [
      {
        :title => 'Fountainhead',
        :author => 'Ayn Rand'
      },
      {
        :title => 'Deep Work',
        :author => 'Cal Newport'
      }
    ]

    expect(books.value_included? 'Deep Work').to eq(true)
    expect(books.value_included? 'Something Else').to eq(false)
  end
end
