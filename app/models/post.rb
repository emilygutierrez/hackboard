class Post < ActiveRecord::Base
  attr_accessible :description, :link, :image

  validates :description, presence: true
  validates :link, presence: true,
  				   format: /^http:\/\/.+\.com$/
  				   	
  validates :user, presence: true	

  validates_attachment :image, :presence => true, :size => { :in => 0..1.megabytes }			   

  has_many :comments

  belongs_to :user

has_attached_file :image,
	styles:{
		thumb: '100x100#',
		small: '150x150>',
		medium: '200x200>'
	}
end
