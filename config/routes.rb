# frozen_string_literal: true

Rails.application.routes.draw do
  resources :users
  resources :flights
  resources :airplanes
  get '/search/:origin/:destination', to: 'search#find'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
