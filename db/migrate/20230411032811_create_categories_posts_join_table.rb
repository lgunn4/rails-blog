class CreateCategoriesPostsJoinTable < ActiveRecord::Migration[6.1]
  def change
    create_table :categories_posts, id: false do |t|
      t.belongs_to :category
      t.belongs_to :post
    end

    add_index :categories_posts, [:category_id, :post_id]
  end
end
