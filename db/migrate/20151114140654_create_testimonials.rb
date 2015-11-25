class CreateTestimonials < ActiveRecord::Migration
  def change
    create_table :testimonials do |t|
      t.string :name
      t.string :photo
      t.text :text
      t.text :designation
      t.timestamps null: false
    end
  end
end
