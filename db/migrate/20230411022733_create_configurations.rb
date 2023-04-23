class CreateConfigurations < ActiveRecord::Migration[7.0]
  def change
    create_table :configurations do |t|
      t.string :name
      t.text :bio
      t.string :profile_picture

      t.timestamps
    end
  end
end
