require './lib/item'
require './lib/food_truck'

describe FoodTruck do
  it 'exists' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    expect(food_truck).is_a? FoodTruck
  end

  it 'has a name' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    expect(food_truck.name).to eq 'Rocky Mountain Pies'
  end

  it 'has an empty inventory hash' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    expect(food_truck.inventory).to eq({})
  end

  describe '#check_stock' do
    it 'returns zero as a default' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})

      expect(food_truck.check_stock(item1)).to eq 0
    end

    it 'returns the integer quantity of item at key' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      food_truck.stock(item1, 20)

      expect(food_truck.check_stock(item1)).to eq 20
    end
  end

  describe '#stock' do
    it 'adds item and quantity as k/v pair in @inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      food_truck.stock(item1, 50)

      expect(food_truck.check_stock(item1)).to eq 50
    end

    it 'can add multiple item/quantity pairs to inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      item1 = Item.new({name: 'Peach Pie (Slice)', price: "$3.75"})
      item2 = Item.new({name: 'Apple Pie (Slice)', price: '$2.50'})
      food_truck.stock(item1, 50)
      food_truck.stock(item2, 18)
      expected = {
        item1 => 50,
        item2 => 18
      }

      expect(food_truck.inventory).to eq expected
    end
  end
end