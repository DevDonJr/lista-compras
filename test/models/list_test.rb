require "test_helper"

class ListTest < ActiveSupport::TestCase
  test "create a simple list" do
    assert_difference 'List.all.count', 1 do
      List.create name: 'List 01'
    end
  end  


  test "don't create duplicated list" do
    assert_difference 'List.all.count', 1 do
      List.create name: 'List 01'
      List.create name: 'List 01'
    end  
  end
end

