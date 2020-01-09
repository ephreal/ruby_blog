Rails.application.routes.draw do
  resources :posts
  get '/pages', to: 'pages#index'
  get '/pages/new', to: 'pages#new', as: :create_new_page
  get '/pages/:id', to: 'pages#show', as: 'page'

  post '/pages', to: 'pages#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
