module Types
  class QueryType < Types::BaseObject
    field :posts, [Types::PostType], null: false

    def posts
      Post.all
    end

    field :post, Types::PostType, null: true do
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find_by(id:)
    end

    field :categories, [Types::CategoryType], null: false

    def categories
      Category.all
    end

    field :category, Types::CategoryType, null: true do
      argument :id, ID, required: true
    end

    def category(id:)
      Category.find_by(id:)
    end

    field :configuration, Types::ConfigurationType, null: true

    def configuration
      Configuration.first
    end
  end
end
