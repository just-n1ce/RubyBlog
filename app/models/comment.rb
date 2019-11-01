class Comment < ApplicationRecord
  belongs_to :post
  validates_presence_of :author, :content, :avatar
  validates :author, format: { with: /\A[A-Z]([\w\-\']{2,})([\s{1}])[A-Z]([\w\-\']{2,})\z/}
  mount_uploader :avatar, AvatarUploader
end
