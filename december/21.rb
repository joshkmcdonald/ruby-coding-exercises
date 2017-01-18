#done
require 'rspec'

def sentence_reverser str
  arr = str.split
  arr.reverse!
  return arr.join(' ')
end


describe "Sentence reverser" do
  it 'reverses the words in a sentence' do
    test_sentence = "backwards am I"
    expect(sentence_reverser(test_sentence)).to eq('I am backwards')
  end
end
