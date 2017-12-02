class AddDataToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :barcode, :string
    add_column :products, :best_before, :integer
    add_column :products, :description, :text
    add_column :products, :fridge_temp, :integer
    add_column :products, :recommendations, :text
    add_column :products, :plus_days_min, :integer
    add_column :products, :plus_days_max, :integer
  end
end
