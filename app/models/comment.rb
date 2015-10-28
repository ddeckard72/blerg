class Comment < ActiveRecord::Base
  belongs_to :post

  # validates :content, presence: true
  validates_presence_of :content, :post_id
end
