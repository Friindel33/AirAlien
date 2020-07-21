class AddFullnameToUser < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :fillname, :string
  end
end
