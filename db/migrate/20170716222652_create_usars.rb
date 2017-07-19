class CreateUsars < ActiveRecord::Migration
  def change
    create_table :usars do |t|
      t.string :firstname
      t.string :lastname
      t.string :username
      t.string :department
      t.string :role
      t.timestamps
    end
  end
end
