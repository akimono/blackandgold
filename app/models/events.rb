class Events < ActiveRecord::Base
  attr_accessible :description, :image, :name, :start
   mount_uploader :image, ImageUploader
end
