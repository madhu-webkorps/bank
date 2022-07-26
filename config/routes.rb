Rails.application.routes.draw do

  devise_for :users
  root 'users#index'
  resources :users
  get 'withdraw/:id' , to:'account#withdraw', as: 'withdraw'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'deposite/:id' , to:'account#deposite', as: 'deposite'
  
end
