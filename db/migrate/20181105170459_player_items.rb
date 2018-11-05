class PlayerItems < ActiveRecord::Migration[5.1]
  def change
    create_table :player_items do |table|
      table.integer :power
      table.integer :defense
      table.integer :damage_type_id
      table.integer :element_type_id
      table.integer :item_type_id

      table.string :damage_type
      table.string :element_type
      table.string :item_type

      table.string :name
      table.text :description
      table.text :lore

      table.timestamps
    end
  end
end
