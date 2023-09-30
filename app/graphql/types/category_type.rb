module Types
  class CategoryType < Types::BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :priority, Int, null: false
    field :color, String, null: false
    field :posts, [Types::PostType], null: true
  end
end
