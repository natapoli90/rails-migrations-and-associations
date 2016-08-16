class AddDetailsToCars < ActiveRecord::Migration
  def change
    add_column :cars, :color, :string
    add_column :cars, :mileage, :decimal
  end
end
