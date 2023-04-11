# Create a GraphQL type for Post
# app/graphql/types/post_type.rb
module Types
    class PostType < Types::BaseObject
      field :id, ID, null: false
      field :title, String, null: false
      field :content, String, null: false
      field :rendered_content, String, null: false
  
        def rendered_content
            object.rendered_content
        end
    end
end
  