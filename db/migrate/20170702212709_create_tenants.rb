class CreateTenants < ActiveRecord::Migration
  def change
    create_table :tenants do |t|
      t.string :tenent_name
      t.date :from
      t.date :to
      t.integer :amount_paid
      t.integer :balance
      t.integer :total
      t.references :landlord, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
