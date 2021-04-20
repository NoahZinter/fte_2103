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

    it 'returns the integer quantity of item at key' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      food_truck.stock("Kebab", 20)

      expect(food_truck.check_stock("Kebab")).to eq 20
    end
  end

  describe '#stock' do
    it 'adds item and quantity as k/v pair in @inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      food_truck.stock("Kofta", 50)

      expect(food_truck.check_stock("Kofta")).to eq 50
    end

    it 'can add multiple item/quantity pairs to inventory' do
      food_truck = FoodTruck.new("Rocky Mountain Pies")
      food_truck.stock("Kofta", 50)
      food_truck.stock("Gumbo", 18)
      expected = {
        "Kofta" => 50,
        "Gumbo" => 18
      }

      expect(food_truck.inventory).to eq expected
    end
  end
end