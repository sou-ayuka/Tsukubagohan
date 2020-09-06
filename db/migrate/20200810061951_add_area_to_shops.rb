class AddAreaToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :area, :string
  end
end
