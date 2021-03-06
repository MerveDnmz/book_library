Rails.application.routes.draw do
  devise_for :users

  resources :books do
  	collection do
  		get 'search'
  	end
  	resources :reviews, except: [:show, :index]
  end

  root 'books#index'

end
