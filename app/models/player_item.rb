class PlayerItem < ApplicationRecord
  validates :name, presence: true
  validates :power, presence: true
  validates :damage_type_id, presence: true
  validates :element_type_id, presence: true
  validates :item_type_id, presence: true

  validates :damage_type_id, format: { with: /[1-2]/, message: "Id 1(instant), and 2(aoe) are allowed" }
  validates :element_type_id, format: { with: /[1]/, message: "Id 1(kinetic) is allowed" }
  validates :item_type_id, format: { with: /[1-3]/, message: "Id 1(meleeAbility), 2(specialAbility), and 3(powerAbility) are allowed" }


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

end
