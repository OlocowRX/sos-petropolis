class ChangeDonationsType < ActiveRecord::Migration[6.1]
  def change
    rename_column :donations, :type, :donation_type
  end
end
