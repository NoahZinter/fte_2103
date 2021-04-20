class FoodTruck

  attr_reader :name, :inventory
  def initialize(name)
    @name = name
    @inventory = {}
    @inventory.default = 0
  end

  def check_stock(item)
    @inventory[item]
  end

  def stock(item, quantity)
    if !inventory.keys.include?(item)
      inventory[item] = quantity
    end
  end

  def potential_revenue
    @inventory.map do |item, quantity|
      item.price.gsub(/[$]/, '').to_f * quantity
    end.sum
  end
end