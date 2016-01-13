class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :about
      t.string :photo

      t.timestamps null: false
    end
  end
end
