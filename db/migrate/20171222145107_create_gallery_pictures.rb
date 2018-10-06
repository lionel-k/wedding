# frozen_string_literal: true

class CreateGalleryPictures < ActiveRecord::Migration[5.1]
  def change
    create_table :gallery_pictures do |t|
      t.string :name
      t.string :description

      t.timestamps
    end
  end
end
