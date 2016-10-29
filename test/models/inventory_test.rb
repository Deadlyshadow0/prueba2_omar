require 'test_helper'

class InventoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  def setup
  	@i = inventories(:two)
  	@inventory_not_category = inventories(:three)
  end

  test "must be invalid for size" do
  	assert_not @i.valid?, "size is 0 or lower"
  end

  test "must be valid" do
  	@i.size = -10
  	assert_not @i.valid?, "size is 0 or lower"
  end

  test "validate category" do
  	assert_not_nil @inventory_not_category.category, "Inventory should have category"
  end

end
