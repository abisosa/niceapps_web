class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.datetime :date
      t.string :status
      t.text :message

      t.timestamps
      t.references :sender
      t.references :receiver
    end
  end
end
