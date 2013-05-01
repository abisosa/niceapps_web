class RemoveConditionsAndInterestColumns < ActiveRecord::Migration
  def up
    remove_column :disks, :conditions
    remove_column :disks, :interest
  end

  def down
    add_column :disks, :conditions, :text
    add_column :disks, :interest, :text
  end
end
