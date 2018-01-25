class CreateSecretscontrollers < ActiveRecord::Migration
  def change
    create_table :secretscontrollers do |t|

      t.timestamps null: false
    end
  end
end
