# frozen_string_literal: true
Rails.application.routes.draw do

  post '/sign-up' => 'users#signup'
  post '/sign-in' => 'users#signin'
  delete '/sign-out/:id' => 'users#signout'
  patch '/change-password/:id' => 'users#changepw'
  get '/books', to: 'books#index'
  get '/book/:id', to: 'books#show'


  resources :authors, except: [:new, :edit]
  resources :books, except: [:new, :edit]
  resources :books, except: [:new, :edit]
  resources :users, only: [:index, :show]
  resources :examples, except: [:new, :edit]
end
