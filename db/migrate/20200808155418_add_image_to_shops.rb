class AddImageToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :image, :string
  end
end
