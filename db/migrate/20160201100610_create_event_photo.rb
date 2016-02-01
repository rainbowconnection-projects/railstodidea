class CreateEventPhoto < ActiveRecord::Migration
  def change
    create_table :event_photos do |t|
      t.string :photo
      t.integer :event_gallery_id
      t.text :caption
    end
  end
end
