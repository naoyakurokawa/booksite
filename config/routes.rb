Rails.application.routes.draw do
  get 'posts/index'
  get "users/index" => "users#index"
  get "posts/new" => "posts#new"
  get "users/new" => "users#new"
  post "posts/create" => "posts#create"
  post "users/create" => "users#create"
  get "posts/:id" => "posts#show"
  get "users/:id" => "users#show"
  get "posts/:id/edit" => "posts#edit"
  get "users/:id/edit" => "users#edit"
  post "posts/:id/update" => "posts#update"
  post "users/:id/update" => "users#update"
  post "posts/:id/destroy" => "posts#destroy"
  post "users/:id/destroy" => "users#destroy"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
