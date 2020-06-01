Rails.application.routes.draw do
  resources 'authors'
  post '/author', to: 'authors#create'
  resources 'posts'
  post '/post', to: 'posts#create'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
