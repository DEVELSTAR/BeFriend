class Post < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 3 }

  belongs_to :user
  has_many :comments, dependent: :destroy
end