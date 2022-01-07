Rails.application.routes.draw do
  
  devise_for :users
  resources :user_stocks, only: [:create, :new, :destroy]
  get 'users/my_portfolio'
  get 'stocks/search_stock'
	root 'welcome#index'
	get 'my_portfolio', to: 'users#my_portfolio'
	get 'search_stock', to: 'stocks#search'

end
