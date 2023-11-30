# Configure the GraphQL API
# config/routes.rb
Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end
  
  root "home#index"
  get 'category/:handle', to: 'categories#show', as: 'category'
  get 'posts/:handle', to: 'posts#show', as: 'post'

  post "/graphql", to: "graphql#execute"
  get "rails/csrf-token", to: "rails#csrf_token"

  resources :posts, param: :handle, only: [:show]
  resources :categories, param: :handle, only: [:show]
end
