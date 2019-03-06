Rails.application.routes.draw do
  devise_for :users, only: [:session] do
  get '/sign_in' => 'devise/sessions#new'
  post 'sign_in' => 'devise/sessions#create'
  delete '/sign_out' => 'devise/sessions#destroy'
end
  namespace :admin do
    resources :pictures
    resources :genres
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'index#index'
  get "index/:id" => "index#show"
  post "download" => "index#download"
  get "download" => "index#download"
  get "read" => "index#read"
end
