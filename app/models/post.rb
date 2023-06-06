class Post < ApplicationRecord
  validates :title, :author, presence: true
end
