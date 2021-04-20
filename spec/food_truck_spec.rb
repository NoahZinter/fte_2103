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

      expect(food_truck.check_stock("Borscht")).to eq 0
    end
  end
end