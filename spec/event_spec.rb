require './lib/item'
require './lib/food_truck'
require './lib/event'

describe Event do
  it 'exists' do
    event = Event.new("South Pearl Street Farmers Market")

    expect(event).is_a? Event
  end

  it 'has a name' do
    event = Event.new("South Pearl Street Farmers Market")

    expect(event.name).to eq "South Pearl Street Farmers Market"
  end

  it 'starts with an empty array of food trucks' do
    event = Event.new("South Pearl Street Farmers Market")

    expect(event.food_trucks).to eq ([])
  end
end