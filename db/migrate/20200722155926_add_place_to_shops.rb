class AddPlaceToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :place, :string
  end
end
