class AddLinkToProducts < ActiveRecord::Migration
  def self.up
    change_table(:products) do |t|
      t.string :link
    end
  end
end
