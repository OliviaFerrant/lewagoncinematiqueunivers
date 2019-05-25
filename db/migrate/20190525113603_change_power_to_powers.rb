class ChangePowerToPowers < ActiveRecord::Migration[5.2]
  def change
    rename_column :powers, :power, :name
  end
end
