Rails.application.routes.draw do

  get 'transaction/index'
  devise_for :users
  root 'users#index'
  resources :users
  get 'withdraw/:id' , to:'transactions#withdraw', as: 'withdraw'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'deposite/:id' , to:'transaction#deposite', as: 'deposite'
  resources :accounts
  resources :transactions

  get 'new' , to:'transaction#new', as: 'new'
  post 'create' , to:'transaction#data', as: 'data'

 
end
