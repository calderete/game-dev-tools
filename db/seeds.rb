# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

PlayerItem.create(
  name: "cream blade",
  power: 4,
  defense: 0,
  damage_type_id: 1,
  element_type_id: 1,
  item_type_id: 2,
  damage_type: "instant",
  element_type: "kinetic",
  item_type: "specialAbility",
  description: "Good for spreading?",
  lore: "I'm not sure what to put here"
)

PlayerItem.create(
  name: "leather knux",
  power: 10,
  defense: 0,
  damage_type_id: 1,
  element_type_id: 1,
  item_type_id: 2,
  damage_type: "instant",
  element_type: "kinetic",
  item_type: "meleeAbility",
  description: "Good for punching",
  lore: "Just keep swinging"
)

PlayerItem.create(
  name: "trinity",
  power: 10,
  defense: 0,
  damage_type_id: 1,
  element_type_id: 1,
  item_type_id: 2,
  damage_type: "instant",
  element_type: "kinetic",
  item_type: "powerAbility",
  description: "No worries",
  lore: "The blast is the least of your problems :)"
)
