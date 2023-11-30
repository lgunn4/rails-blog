class AddHandleToCategories < ActiveRecord::Migration[7.0]
  def change
    add_column :categories, :handle, :string

    Category.all.each do |category|
      category.update_column(:handle, category.name.downcase.tr(' ', '-'))
    end

    add_index :categories, :handle, unique: true
  end
end
