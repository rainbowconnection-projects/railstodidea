class Founder < ActiveRecord::Migration
  def change
    create_table :founders do |t|
      t.string :name
      t.string :title
      t.string :photo
      t.text :stories
    end
  end
end
