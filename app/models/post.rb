class Post < ApplicationRecord
  include Visible

  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 3 }

  belongs_to :user
  has_many :comments, dependent: :destroy
  has_many :likes, dependent: :destroy

end