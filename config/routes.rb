Rails.application.routes.draw do
  devise_for :users
  root to: "auctions#index"

  resources :auctions

  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
end
