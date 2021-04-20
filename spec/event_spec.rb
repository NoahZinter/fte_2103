require './lib/item'
require './lib/food_truck'
require './lib/event'

describe Event do
  it 'exists' do
    event = Event.new("South Pearl Street Farmers Market")

    expect(event).is_a? Event
  end
end