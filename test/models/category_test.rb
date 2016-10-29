require 'test_helper'

class CategoryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  test "cascade" do
  	c = categories(:one)
  	c.destroy
  	assert_empty Inventory.where(:category => c), "cascade fail"
  end
end
