class Product < ActiveRecord::Base
  attr_accessible :description, :image, :name, :price, :producttype, :stockstatus, :video
  mount_uploader :image, ImageUploader
end
