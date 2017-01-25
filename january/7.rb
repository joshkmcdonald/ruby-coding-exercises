#done
require 'rspec'

menu = {
  'appetizers': ['Chips', 'Quesadillas', 'Flatbread'],
  'entrees': ['Steak', 'Chicken', 'Lobster'],
  'desserts': ['Cheesecake', 'Cake', 'Cupcake']
}

def daily_special hash
  arr = hash.values.flatten
  arr[ rand(0...arr.length) ]
end

describe 'Nested hash element selector' do
  it 'selected a random element from the set of nested arrays' do
    expect(daily_special(menu).class).to eq(String)
  end
end
