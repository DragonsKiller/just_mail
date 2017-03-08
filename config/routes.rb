Rails.application.routes.draw do
  root 'posts#index'
  resources :posts, :post_offices, :emails, :tracks

  devise_for :users, :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
