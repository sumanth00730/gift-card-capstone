class AddUserId < ActiveRecord::Migration[6.1]
  def change
    add_column :orders, :uid, :int
  end
end
