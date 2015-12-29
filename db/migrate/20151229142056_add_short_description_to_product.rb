class AddShortDescriptionToProduct < ActiveRecord::Migration
  def self.up
    change_table :products do |t|
      t.string :short_description
    end
  end

  def self.down

  end
end
