Rails.application.routes.draw do
  root 'books#index'
  devise_for :users
  resources :books

  resources :books do
  	collection do
  		get 'search'
  	end
  	resources :reviews, except: [:show, :index]
  end
end
