#done
require 'rspec'

def increment_value str
  str + str.next.slice(-1)
end

describe 'Increment string value sequence' do
  it 'appends the next item in the sequence of a string' do
    expect(increment_value 'abcde').to eq('abcdef')
    expect(increment_value '123').to eq('1234')
  end
end

# def increment_value str
#   letter_arr = ('a'..'z').to_a
#   num_arr = ('1'..'26').to_a

#   if num_arr.values_at(0...str.length).join == str
#     str << num_arr[str.length]
#   else
#     str << letter_arr[str.length]
#   end
# end