class AddContractToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :contract, :boolean
  end
end
