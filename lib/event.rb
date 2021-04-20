class Event
  attr_reader :name, :food_trucks

  def initialize(name)
    @name = name
    @food_trucks = []
  end

  def add_food_truck(food_truck)
    @food_trucks << food_truck
  end

  def food_truck_names
    @food_trucks.map do |truck|
      truck.name
    end
  end

  def food_trucks_that_sell(item)
    @food_trucks.select do |truck|
      truck.check_stock(item) > 0
    end
  end

  def items
    @food_trucks.map do |truck|
      truck.inventory.keys
    end.flatten.uniq
  end

  def total_quantity(item)
    @food_trucks.map do |truck|
      truck.check_stock(item)
    end.sum
  end

  def item_total(item)
    {:quantity => total_quantity(item),
      :food_trucks => food_trucks_that_sell(item)
    }
  end

  def total_inventory
    tots = items.reduce({}) do |hash, item|
      hash.update(item => item_total(item))
    end
  end

  def overstocked_items
    items.select do |item|
      food_trucks_that_sell(item).length > 1 && total_quantity(item) > 50
    end
  end
end