# frozen_string_literal: true

require 'yaml'
require 'csv'

GalleryPicture.destroy_all

gallery = YAML.load_file('db/gallery.yml')
gallery.each do |picture|
  name = picture['name']
  description = picture['description']
  GalleryPicture.create!(name: name, description: description)
end

# Guest.destroy_all

# csv_options = { col_sep: ',', headers: :first_row }
# filepath    = 'db/guests.csv'


# CSV.foreach(filepath, csv_options) do |row|
#   Guest.create(email: "#{row['email']}",
#     first_name: "#{row['first_name']}",
#     last_name: "#{row['last_name']}",
#     dear: "#{row['dear']}",
#     greeting: "#{row['greeting']}",
#     language: "#{row['language']}"
#     )
# end
