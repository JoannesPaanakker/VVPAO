class AddExtrasToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :tussenvoegsel, :string
    add_column :users, :big, :string
    add_column :users, :buddy, :boolean
    add_column :users, :training_suggestion, :string
  end
end
