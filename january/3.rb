#done
require 'rspec'

class String
  def total_words
    self.gsub(/-|\/|\./, '').split.length
  end
    
  def word_list
    @h = {}
    arr =  self.gsub(/-|\/|\./, '').split

    arr.length.times do |x|
      if @h.has_key?(arr[x])
        @h[arr[x]] += 1
      else
        @h.store(arr[x], 1) 
      end
    end
    @h
  end
end

describe 'Word Reporter' do
  before do
    @str = "- the quick brown fox / jumped over the lazy fox."
  end

  it 'Counts words accurately' do
    expect(@str.total_words).to eq(9)
  end

  it 'Returns a hash that totals up word usage' do
    expect(@str.word_list).to eq({"the"=>2,
                                  "quick"=>1,
                                  "brown"=>1,
                                  "fox"=>2,
                                  "jumped"=>1,
                                  "over"=>1,
                                  "lazy"=>1}
                                )
  end
end