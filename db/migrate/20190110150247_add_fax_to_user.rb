class AddFaxToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fax, :string
  end
end
