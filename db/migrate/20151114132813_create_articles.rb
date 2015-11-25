class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.integer :category_id
      t.text :text
      t.string :photo
      t.timestamps null: false
    end
  end
end
