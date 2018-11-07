class PlayerItem < ApplicationRecord
  @damage_types = {1 => "instant", 2 => "aoe"}
  @item_types = {1 => "meleeAbility", 2 => "specialAbility", 3 => "powerAbility"}
  @element_types = {1 => "kinetic"}

  def self.create_item(form_data)
    damage_type = @damage_types[form_data[:damage_type_id].to_i]
    item_type = @item_types[form_data[:item_type_id].to_i]
    element_type = @element_types[form_data[:element_type_id].to_i]
    self.create!(
      name: form_data[:name],
      power: form_data[:power],
      damage_type_id: form_data[:damage_type_id],
      damage_type: damage_type,
      element_type_id: form_data[:element_type_id],
      element_type: element_type,
      item_type_id: form_data[:item_type_id],
      item_type: item_type,
      description: form_data[:description]
    )

  end

  def self.set_types(form_data)

  end
end
