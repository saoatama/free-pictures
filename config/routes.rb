Rails.application.routes.draw do
  namespace :admin do
    resources :pictures
    resources :genres
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  root to: 'index#index'
  get "index/:id" => "index#show"
  post "download" => "index#download"
  get "download" => "index#download"
end
