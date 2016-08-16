class AddVinToCars < ActiveRecord::Migration
  def change
    add_column :cars, :vin, :string
  end
end
