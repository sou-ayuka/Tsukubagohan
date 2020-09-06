class AddMoneyToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :money, :string
  end
end
