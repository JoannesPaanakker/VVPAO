class SampleNameChangeColumnType2 < ActiveRecord::Migration[5.2]
  def change
    change_column(:users, :practice_streetnumber, :string)
  end
end
