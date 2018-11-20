Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'items/all', to: 'player_item#list', as: 'all_items'
  get 'items/add', to: 'player_item#add', as: 'add_item'
  get 'tools/anagram-helper', to: 'anagram_helper#home', as: 'anagram_helper'

  post 'items/save', to: 'player_item#save', as: 'save_item'
  post 'tools/proccess/string', to: 'anagram_helper#anagram', as: 'process'

  delete 'item/:id', to: 'player_item#destroy', as: 'destroy_item'
end
