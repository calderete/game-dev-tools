Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'items/all', to: 'player_item#list', as: 'all_items'

  delete 'item/:id', to: 'player_item#destroy', as: 'destroy_item'
end
