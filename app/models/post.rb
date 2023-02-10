class Post < ApplicationRecord
  validates :title, presence: true, length: {
    minimum: 5,
    maximum: 50
  }

  validates :body, presence: true, length: {
    minimum: 10,
    maximum: 1000
  }

  #   since 1 user, many posts
  belongs_to :user
end
