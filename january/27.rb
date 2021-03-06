# done
require 'rspec'

def image_tag path, width: nil, alt: nil, random_value: nil
  path = "<img src='#{path}'"
  p_hash = {
    " width=" => "'#{width}'",
    " alt=" => "'#{alt}'", 
    " random_value=" => "'#{random_value}'"
  }

  p_hash.each do |x,y|
    if y != "''"
      path << x
      path << y
    end
  end
  path << ">"
end


describe 'Cloned image_tag' do
  before do
    @image_path = "https://devcamp.com/some_pic.jpg"
  end

  it 'generates an HTML link' do
    expect(image_tag(@image_path)).to eq("<img src='https://devcamp.com/some_pic.jpg'>")
  end

  it 'generates an HTML link and can optionally take a width' do
    expect(image_tag(@image_path, width: 42)).to eq("<img src='https://devcamp.com/some_pic.jpg' width='42'>")
  end

  it 'generates an HTML link and can optionally take an alt tag' do
    expect(image_tag(@image_path, width: 42, alt: "My Image")).to eq("<img src='https://devcamp.com/some_pic.jpg' width='42' alt='My Image'>")
  end

  it 'generates an HTML link and can optionally take any type of attribute tag' do
    random = rand 100
    expect(image_tag(@image_path, random_value: random)).to eq("<img src='https://devcamp.com/some_pic.jpg' random_value='#{random}'>")
  end
end

