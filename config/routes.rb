Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'home#index'
  #get '/home/add_word', to: 'home#add_word'
  #post '/home/add_word', to: 'home#add_word'
  #get '/home', to: 'home#add_word'
  #post '/home', to: 'home#add_word'
  get '/begin_page', to: 'home#begin_page'
  get '/begin_page/start_game', to: 'home#start_game'
  get '/begin_page/edit_words', to: 'home#edit_words'
  get '/add_word', to: 'home#add_word'
  #post '/add_word', to: 'home#add_word'

end
