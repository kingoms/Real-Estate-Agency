class AddPasswordDigestToUsars < ActiveRecord::Migration
  def change
    add_column :usars, :password_digest, :string
  end
end
