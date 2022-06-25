class CreateOrders < ActiveRecord::Migration[6.1]
  def change
    create_table :orders do |t|
      t.string :rfname
      t.string :rlname
      t.float :gcvalue
      t.float :apayable
      t.integer :phone
      t.string :address

      t.timestamps
    end
  end
end
