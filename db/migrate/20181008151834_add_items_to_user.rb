class AddItemsToUser < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    add_column :users, :initials, :string
    add_column :users, :street, :string
    add_column :users, :streetnumber, :integer
    add_column :users, :number_extension, :string
    add_column :users, :postalcode, :string
    add_column :users, :city, :string
    add_column :users, :phonenumber, :string
    add_column :users, :dob, :date
    add_column :users, :practice_name, :string
    add_column :users, :practice_street, :string
    add_column :users, :practice_streetnumber, :integer
    add_column :users, :practice_number_extension, :string
    add_column :users, :practice_postalcode, :string
    add_column :users, :practice_city, :string
    add_column :users, :practice_email, :string
    add_column :users, :practice_phonenumber, :string
    add_column :users, :website, :string
  end
end
