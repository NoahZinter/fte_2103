require './lib/item'

describe Item do
  it 'exists' do
    item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

    expect(item1).is_a? Item
  end

  it 'has a name' do
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

    expect(item2.name).to eq 'Apple Pie (Slice)'
  end

  it 'has a price' do
    item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})

    expect(item2.price).to eq '$2.50'
  end
end