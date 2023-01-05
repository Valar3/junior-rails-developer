class Post < ApplicationRecord
  validates :title, presence: true, length: {minimum: 6, maximum: 60}
  validates :description, presence: true, length: {minimum: 6, maximum: 400}
  belongs_to :author
end
