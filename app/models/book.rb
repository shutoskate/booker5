class Book < ApplicationRecord
  validates :title, :kill, :author, :image, presence: true
  mount_uploader :image, ImageUploader#画像アップロードgem carrierwave読み込み
  belongs_to :user
end
