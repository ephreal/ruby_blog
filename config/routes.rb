Rails.application.routes.draw do
  resources :posts do
  
  # Rather than having to write out /posts/:post_id on everything like so, you can
  # nest the comments in a block created in posts.
  # get  '/posts/:post_id/comments', to: 'comments#index', as: 'post_comments'

  #  get  '/comments', to: 'comments#index', as: 'comments'
  #  post '/comments', to: 'comments#create'
  #  get  '/comments/new', to: 'comments#new', as: 'new_comment'
  #  get  '/comments/:id', to: 'comments#show', as: 'comment'
  #  get  '/comments/:id/edit', to: 'comments#edit', as: 'edit_comment'
  #  patch '/comments/:id', to: 'comments#update'
  #  delete '/comments/:id', to: 'comments#destroy'
    
    # As might be expected, it's possible to do
    resources :comments
    # to have all 7 of these route auto-generated as well

  end

  # Note: All 7 routes below could be replaced with the rails 1-liner
  # resources :pages
  # like is above for posts. I'm keeping everything below for my own knowledge.
  delete '/pages/:id', to: 'pages#destroy'

  get '/pages', to: 'pages#index'
  get '/pages/new', to: 'pages#new', as: :create_new_page
  get '/pages/:id/edit', to: 'pages#edit', as: "edit_page"
  get '/pages/:id', to: 'pages#show', as: :page

  patch '/pages/:id', to: 'pages#update'
  post '/pages', to: 'pages#create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
