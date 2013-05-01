class RenamePicPathToImageEncoding < ActiveRecord::Migration
  def up
    rename_column :disks, :pic_path, :image_encoding
  end

  def down
    rename_column :disks, :image_encoding, :pic_path
  end
end
