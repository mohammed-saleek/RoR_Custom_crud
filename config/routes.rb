Rails.application.routes.draw do
  root 'pages#home'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #new posts
  get '/posts', to:'posts#display_posts'
  get '/posts/new_post', to: 'posts#new_post'
  post '/posts/new_post', to: 'posts#create_post', as: :create_post
  get '/posts/show_post/:id', to: 'posts#show_post', as: :show_post
  get '/posts/edit_post/:id', to: 'posts#edit_post', as: :edit_post
  patch '/posts/:id', to: 'posts#update_post', as: :update_post
  delete '/posts/:id', to: 'posts#delete_post', as: :delete_post
end
