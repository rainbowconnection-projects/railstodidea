class CreatePeople < ActiveRecord::Migration
  def change
    create_table :people do |t|
      t.string :name
      t.text :stories
      t.string :photo
      t.integer :team_id

      t.timestamps null: false
    end
  end
end
