class CreateDisks < ActiveRecord::Migration
  def change
    create_table :disks do |t|
      t.string :title
      t.string :artist
      t.text :conditions
      t.text :interest
      t.string :pic_path
      t.string :status

      t.timestamps
      t.references :user
    end
  end
end
