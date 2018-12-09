class AddExpertisesToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :expertises, :text, array: true, default: []
  end
end
