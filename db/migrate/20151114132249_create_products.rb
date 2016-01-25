class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :photo
      t.string :link
      t.text :short_description

      t.timestamps null: false
    end
  end
end
