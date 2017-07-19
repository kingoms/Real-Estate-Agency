class AddLastnameToLandlords < ActiveRecord::Migration
  def change
    add_column :landlords, :lastname, :text
    add_column :landlords, :address, :text
    add_column :landlords, :phone, :varchar
    add_column :landlords, :created_at, :datetime
    add_column :landlords, :updated_at, :datetime
  end
end
