class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.string :photo
      t.text :description
      t.date :date

      t.timestamps null: false
    end
  end
end
