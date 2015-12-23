class AddClassToTag < ActiveRecord::Migration
  def self.up
    change_table(:tags) do |t|
      t.string :tag
    end

  end

end
