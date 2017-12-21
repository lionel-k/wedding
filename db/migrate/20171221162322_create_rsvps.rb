class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.references :guest, foreign_key: true
      t.boolean :is_attending
      t.string :additionals
      t.boolean :needs_accomodation
      t.text :consideration

      t.timestamps
    end
  end
end
