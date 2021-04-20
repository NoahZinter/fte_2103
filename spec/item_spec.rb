require './lib/item'

describe Item do
  it 'exists' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

    expect(item1).is_a? Item
  end
end