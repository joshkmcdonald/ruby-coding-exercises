# done
require 'rspec'

def vowel_remover alphabet
  alphabet.map { |letter| letter.scan(/[^aeiou]/) }.flatten
  # alphabet.to_a.keep_if { |letter| letter =~ /[^aeiou]/ }
end

describe 'Vowel remover' do
  it 'removes vowels from the alphabet' do
    alphabet = ('a'..'z')
    expect(vowel_remover(alphabet)).to eq(["b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "y", "z"])
  end
end

alphabet = ('a'..'z')
p vowel_remover(alphabet)