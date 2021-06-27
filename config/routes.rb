Rails.application.routes.draw do
  # EXAMPLE HTML ROUTE
  # get "/photos" => "photos#index"

  namespace :api do
    post "/sessions" => "sessions#create"

    #users
    resources :users do
    end
    # get "/users" => "users#index"
    # get "/users/:id" => "users#show"
    # post "/users" => "users#create"
    # patch "/users/:id" => "users#update"
    # delete "/users/:id" => "users#delete"

    # comments
    resources :comments do
    end
    # get "/comments" => "comments#index"
    # get "/comments/:id" => "comments#show"
    # post "/comments" => "comments#create"
    # patch "/comments/:id" => "comments#update"
    # delete "/comments/:id" => "comments#delete"

    # posts
    get "/posts/subscription" => "posts#subscribed_index"
    
    resources :posts do
    end
    # get "/posts" => "posts#index"
    # get "/posts/:id" => "posts#show"
    # post "/posts" => "posts#create"
    # patch "/posts/:id" => "posts#update"
    # delete "/posts/:id" => "posts#delete"

    # boards
    get "/boards" => "boards#index"
    get "/boards/:title" => "boards#show"

    #subscriptions
    get "/subscriptions" => "subscriptions#index"
    post "/subscriptions" => "subscriptions#create"
    delete "/subscriptions/:id" => "subscriptions#delete"

    # votes
    post "/votes" => "votes#create"
  end
end
