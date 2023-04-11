class CreateCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :color
      t.integer :priority

      t.timestamps
    end
  end
end
