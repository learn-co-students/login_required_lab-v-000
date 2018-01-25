class AddNameToSecrets < ActiveRecord::Migration
  def change
    add_column :secrets, :name, :string
  end
end
