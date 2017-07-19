class CreateLandlords < ActiveRecord::Migration
  def change
    create_table :landlords do |t|
      t.string :firstname
    end
  end
end
