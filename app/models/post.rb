class Post < ApplicationRecord
  belongs_to :category
  has_many :comments, dependent: :destroy
  mount_uploader :file, FileUploader
  validates :file, file_size: { less_than: 2.megabytes, :message => "Must be less than 100 characters" }
end
