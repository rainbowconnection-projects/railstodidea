class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.integer :product_id
      t.string :name

      t.timestamps null: false
    end
  end
end
