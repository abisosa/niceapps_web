class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.string :status
      t.text :message
      t.text :reply_message

      t.timestamps
      t.references :sender
      t.references :receiver
      t.references :disk
    end
  end
end
