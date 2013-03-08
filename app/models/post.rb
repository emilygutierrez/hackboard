class Post < ActiveRecord::Base
  attr_accessible :description, :link

  validates :description, presence: true
  validates :link, presence: true,
  				   format: /^http:\/\/.+\.com$/	

  has_many :comments
end
