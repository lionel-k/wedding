# frozen_string_literal: true

class CreateGuests < ActiveRecord::Migration[5.1]
  def change
    create_table :guests do |t|
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :dear
      t.string :greeting
      t.string :language

      t.timestamps
    end
  end
end
