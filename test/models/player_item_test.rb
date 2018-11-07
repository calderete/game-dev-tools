require 'test_helper'

class PlayerItemTest < ActiveSupport::TestCase
  test "Instant damage type is set correctly" do
    name = "Instant damage"
    PlayerItem.create_item({name: name, damage_type_id: 1})
    assert_equal PlayerItem.find_by(name: name)['damage_type'], "instant"
  end

  test "AOE damage type is set correctly" do
    name = "AOE damage"
    PlayerItem.create_item({name: name, damage_type_id: 2})
    assert_equal PlayerItem.find_by(name: name)['damage_type'], "aoe"
  end

  test "KENITIC element type is set correctly" do
    name = "Kenitic element"
    PlayerItem.create_item({name: name, element_type_id: 1})
    assert_equal PlayerItem.find_by(name: name)['element_type'], "kinetic"
  end

  test "Melee item type is set correctly" do
    name = "Melee item"
    PlayerItem.create_item({name: name, item_type_id: 1})
    assert_equal PlayerItem.find_by(name: name)['item_type'], "melee"
  end

  test "Special item type is set correctly" do
    name = "Special item"
    PlayerItem.create_item({name: name, item_type_id: 2})
    assert_equal PlayerItem.find_by(name: name)['item_type'], "special_ability"
  end

  test "Power item type is set correctly" do
    name = "Power item"
    PlayerItem.create_item({name: name, item_type_id: 3})
    assert_equal PlayerItem.find_by(name: name)['item_type'], "power_ability"
  end
end
