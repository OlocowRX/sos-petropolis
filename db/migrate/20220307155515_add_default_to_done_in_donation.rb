class AddDefaultToDoneInDonation < ActiveRecord::Migration[6.1]
  def change
    change_column :donations, :done, :boolean, default: false
  end
end
