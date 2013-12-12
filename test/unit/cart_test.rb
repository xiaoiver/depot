require 'test_helper'

class CartTest < ActiveSupport::TestCase

  test 'cart should create a new line item when adding a new product' do
    cart =carts(:one)
    assert_equal 0, cart.line_items.count
    assert_equal 0, cart.total_price
    
    current_item = cart.add_product(products(:one).id)
    current_item.save
    assert_equal 1, cart.line_items.count
    
    current_item = cart.add_product(products(:one).id)
    current_item.save
    assert_equal 1, cart.line_items.count
    
		item = cart.line_items.find_by_product_id 1
		assert_equal 2, item.quantity
		assert_equal 10*2, cart.total_price
  end

end
