class Post < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 3 }

  belongs_to :user
end