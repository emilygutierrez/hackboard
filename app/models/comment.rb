class Comment < ActiveRecord::Base
  attr_accessible :body, :post_id

  validates :post, presence: true
  validates :user, presence: true

  belongs_to :post
  belongs_to :user
end
