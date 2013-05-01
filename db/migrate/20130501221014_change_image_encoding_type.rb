class ChangeImageEncodingType < ActiveRecord::Migration
  def up
    change_column :disks, :image_encoding, :text
  end

  def down
    change_column :disks, :image_encoding, :string
  end
end
