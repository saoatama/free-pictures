Rails.application.routes.draw do
  devise_for :admins, path: :admin
  namespace :admin do
    resources :pictures
    resources :genres
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "index" => "index#index"
  get "index/:id" => "index#show"
  post "download" => "index#download"
  get "download" => "index#download"
end
