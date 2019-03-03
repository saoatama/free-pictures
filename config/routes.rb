Rails.application.routes.draw do
  namespace :admin do
    resources :pictures
    resources :genres
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get "index" => "index#index"
end
