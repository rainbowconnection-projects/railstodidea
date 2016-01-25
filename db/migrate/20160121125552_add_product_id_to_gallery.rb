class AddProductIdToGallery < ActiveRecord::Migration
  def change
    add_column :galleries, :product_id, :integer
  end
end
