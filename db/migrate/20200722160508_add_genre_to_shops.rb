class AddGenreToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :genre, :string
  end
end
