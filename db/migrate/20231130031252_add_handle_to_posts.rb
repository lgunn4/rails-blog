class AddHandleToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :handle, :string

    Post.all.each do |post|
      post.update_column(:handle, post.title.downcase.tr(' ', '-'))
    end

    add_index :posts, :handle, unique: true
  end
end
