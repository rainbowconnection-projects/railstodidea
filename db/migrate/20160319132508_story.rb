class Story < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.text :story
    end
  end
end
