class RestaurantBill
  SALES_TAX = 0.065 # 6.5% into decimal
  attr_reader :ordered_items, :tip, :total

  def initialize
    @ordered_items = []
    @tip = 0.0
    @total = total
  end

  def order_item(item, cost)
    @ordered_items << [item, cost]
  end

  def total
    total_value = 0
    @ordered_items.each do |item_cost_array|
      total_value += item_cost_array[1]
    end
    @total = total_value + total_value * SALES_TAX
    return @total.to_f
  end

  def add_tip(tip)
    @tip = tip
    return @tip + total
  end

  def print_bill
    final_total = @total + @tip
    return "Final Total: $#{final_total}\nTax: #{SALES_TAX * 100}%\nTip: $#{@tip}"
  end

end
