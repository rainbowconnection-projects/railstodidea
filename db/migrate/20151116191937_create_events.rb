class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :event_name
      t.string :photo
      t.datetime :date
      t.text :description
      t.timestamps null: false
    end
  end
end
