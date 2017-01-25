#done
require 'rspec'

# ¥
# £
# $

def currency_converter amount, location
  case location
  when 'US'
    "$#{amount}.00"
  when 'Japan'
    "¥#{amount}"
  when 'UK'
    "£#{amount},00"
  end
end

describe 'Currency converter' do
  it 'can properly format currency for US, Japan, and UK' do
    expect(currency_converter 5000, 'US').to eq('$5000.00')
    expect(currency_converter 5000, 'Japan').to eq('¥5000')
    expect(currency_converter 5000, 'UK').to eq('£5000,00')
  end
end
