require "yaml"

GalleryPicture.destroy_all

gallery = YAML.load_file('db/gallery.yml')
gallery.each do |picture|
  name = picture["name"]
  description = picture["description"]
  GalleryPicture.create!(name: name, description: description)
end
