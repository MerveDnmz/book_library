class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :name
      t.text :description
      t.string :authors
      t.string :rating
      t.string :publishers
      t.string :categories
      t.string :users

      t.timestamps
    end
  end
end
