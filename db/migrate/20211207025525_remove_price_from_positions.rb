class RemovePriceFromPositions < ActiveRecord::Migration[6.1]
  def change
    remove_column :positions, :price
  end
end
