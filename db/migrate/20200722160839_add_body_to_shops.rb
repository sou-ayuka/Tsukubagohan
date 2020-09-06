class AddBodyToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :body, :text
  end
end
