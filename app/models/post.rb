class Post < ApplicationRecord
  validates :title, :author, presence: true

  def to_s
    "#{title} by #{author}"
  end
end
