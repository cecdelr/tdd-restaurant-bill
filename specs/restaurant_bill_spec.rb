require 'minitest/autorun'
require 'minitest/reporters'
require 'minitest/skip_dsl'
require_relative '../lib/restaurant_bill'

describe "Can create a RestaurantBill." do
  before do
    @initialize_RestaurantBill = RestaurantBill.new
  end

  it "Can be initialized." do
    @initialize_RestaurantBill.must_be_instance_of RestaurantBill
  end

  it "RestaurantBill is initialized with an instance variable called ordered_items that is an empty array." do
    @initialize_RestaurantBill.ordered_items.must_be_instance_of Array
  end

  # Test the method order_item, it should expect that
  # ordered_items includes the new item.
  it "order_item method should add the new item to ordered_items." do
    @initialize_RestaurantBill.order_item("mango", 10)
    passed_arr = ["mango", 10]
    @initialize_RestaurantBill.ordered_items[0].must_equal passed_arr
  end

  it "Adds 3 items to ordered_items when order_item is called 3 times." do
    @initialize_RestaurantBill.order_item("avocado", 15)
    @initialize_RestaurantBill.order_item("banana", 3)
    @initialize_RestaurantBill.order_item("carrot", 8)
    @initialize_RestaurantBill.ordered_items.length.must_equal 3
  end
end

describe "Has a method that returns the total cost of all items with tax." do
  before do
    @initialize_RestaurantBill = RestaurantBill.new
  end

  it "Has a total method" do
    @initialize_RestaurantBill.must_respond_to :total
  end

  it "Returns total cost of ordered items with tax." do
    @initialize_RestaurantBill.order_item("avocado", 15)
    @initialize_RestaurantBill.order_item("banana", 3)
    @initialize_RestaurantBill.order_item("carrot", 8)
    @initialize_RestaurantBill.total.must_equal (26 + 1.69)
  end
end

describe "Has a method to add tip. Returns total cost plus tip." do
  before do
    @initialize_RestaurantBill = RestaurantBill.new
  end

  it "Has an add_tip method" do
    @initialize_RestaurantBill.must_respond_to :add_tip
  end

  it "Returns the total plus tip amount passed into the method." do
    @initialize_RestaurantBill.order_item("avocado", 15)
    @initialize_RestaurantBill.add_tip(5).must_equal (15 + (15 * 0.065) + 5)
  end
end

describe "Has a method that shows the final cost of a bill, with tax and tip." do
  before do
    @initialize_RestaurantBill = RestaurantBill.new
  end

  it "Prints out a string that shows the final cost" do
    @initialize_RestaurantBill.order_item("avocado", 15)
    @initialize_RestaurantBill.order_item("banana", 3)
    @initialize_RestaurantBill.order_item("carrot", 8) #26
    @initialize_RestaurantBill.add_tip(10)
    @initialize_RestaurantBill.print_bill.must_be_instance_of String
  end
end

describe "Has attribute for ordered_items, tip, and total" do
  before do
    @initialize_RestaurantBill = RestaurantBill.new
    @initialize_RestaurantBill.order_item("avocado", 15)
  end
  it "Has attributes for ordered_items, tip, and total" do
    @initialize_RestaurantBill.ordered_items.must_be_instance_of Array
    @initialize_RestaurantBill.tip.must_be_instance_of Float
    @initialize_RestaurantBill.total.must_be_instance_of Float
  end
end
