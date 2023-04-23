class AddPinnedToPosts < ActiveRecord::Migration[7.0]
  def change
    add_column :posts, :pinned, :boolean, default: false
  end
end
