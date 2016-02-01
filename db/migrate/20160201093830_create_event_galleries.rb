class CreateEventGalleries < ActiveRecord::Migration
  def change
    create_table :event_galleries do |t|
      t.integer :event_id
      t.string :name

      t.timestamps null: false
    end
  end
end
