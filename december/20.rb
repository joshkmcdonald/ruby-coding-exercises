require 'rspec'

string_array = [
  "Web IconHTML & CSS100%",
  "Command LineLearn the Command Line100%",
  "Ruby IconRuby50%",
  "Rails IconLearn Ruby on Rails100%",
  "Git IconLearn Git100%",
  "SassLearn Sass20%",
  "JQuery IconjQuery1%",
  "Angular JSLearn AngularJS 1.X100%",
  "Javascript IconLearn JavaScript55%"
]

# def string_parser string_array
#   new_array = []

#   string_array.length.times do |x|

#     if string_array[x].include?("100%")
#       new_array.push(100)
#     elsif string_array[x].include?("50%") 
#       new_array.push(50)
#     elsif string_array[x].include?("20%") 
#       new_array.push(20)
#     elsif string_array[x].include?("1%") 
#       new_array.push(1)
#     elsif string_array[x].include?("55%")
#       new_array.push(55)
#     end
      
#   end
#   new_array
# end

def string_parser string_array
  new_array = []
  string_array.each do |str|
    new_array << str.scan(/\d+/).last.to_i
  end
  new_array
end

describe "String Parser" do
  it 'can take a string and output the correct values' do
    expect(string_parser(string_array)).to eq([100, 100, 50, 100, 100, 20, 1, 100, 55])
  end
end


