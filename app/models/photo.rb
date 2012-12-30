class Photo < ActiveRecord::Base
  # Friendly_id
  extend FriendlyId
  friendly_id :title, use: [:slugged, :history]

  # Carrierwave
  mount_uploader :image, ImageUploader

  # Tags
  acts_as_taggable

  # Creative Commons License: http://www.flickr.com/creativecommons/
  USAGE = ['Attribution License', 
            'Attribution-NoDerivs License', 
            'Attribution-NonCommercial-NoDerivs License', 
            'Attribution-NonCommercial License', 
            'Attribution-NonCommercial-ShareAlike License', 
            'Attribution-ShareAlike License']

  # Validations
  validates :title, :presence => :true, :uniqueness => :true
  validates :usage, :presence => :true, :inclusion => { :in => USAGE, :allow_nil => true }
  validates :image, :presence => :true

  # Attributes
  attr_accessible :image, :remote_image_url, :tag_list, :title, :usage
end
