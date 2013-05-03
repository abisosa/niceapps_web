class ChangeUseridToUserName < ActiveRecord::Migration
  def up
    rename_column :messages, :user_id, :username
    change_column :messages, :username, :string
  end

  def down
    rename_column :messages, :username, :user_id
    change_column :messages, :user_id, :integer
  end
end
