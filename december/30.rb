#done
require 'rspec'

class Hash
  def param_converter
    h = self
    a = []

    h.each do |x,y|
      a << [x,y].flatten.join("=")
    end

  a.join("&")  

  end

  # def param_converter
  #   self.map { |i| i * "="} * "&"
  # end
end

describe 'HTML Param Converter' do
  it 'Adds an HTML param converter to the Hash class' do
    hash = { :topic => "baseball", :team => "astros" }
    expect(hash.param_converter).to eq('topic=baseball&team=astros')
  end
end

hash = { :topic => "baseball", :team => "astros" }
p hash.param_converter

