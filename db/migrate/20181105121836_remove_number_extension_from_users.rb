class RemoveNumberExtensionFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :number_extension, :string
    remove_column :users, :practice_number_extension, :string
  end
end
