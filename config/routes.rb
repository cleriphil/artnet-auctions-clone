Rails.application.routes.draw do
  devise_for :users
  root to: "auctions#index"

  resources :auctions do
    resources :lots
  end

  resources :artists do
    resources :lots
  end
  # check if this routing is correct

  get '/about' => 'pages#about'
  get '/contact' => 'pages#contact'
end
