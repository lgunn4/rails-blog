# Configure the GraphQL API
# config/routes.rb
Rails.application.routes.draw do
  if Rails.env.development?
    mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "/graphql"
  end

  post "/graphql", to: "graphql#execute"
  get "rails/csrf-token", to: "rails#csrf_token"
end
