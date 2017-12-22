GalleryPicture.destroy_all

require "yaml"

gallery = YAML.load_file('db/gallery.yml')
gallery.each do |picture|
  name = picture["name"]
  description = picture["description"]
  GalleryPicture.create!(name: name, description: description)
end
