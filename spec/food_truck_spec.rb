require './lib/item'
require './lib/food_truck'

describe FoodTruck do
  it 'exists' do
    food_truck = FoodTruck.new("Rocky Mountain Pies")

    expect(food_truck).is_a? FoodTruck
  end
end