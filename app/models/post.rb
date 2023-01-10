class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 3, maximum: 60}
  validates :description, presence: true, length: {minimum: 6, maximum: 400}
  belongs_to :author
  belongs_to :category
end
