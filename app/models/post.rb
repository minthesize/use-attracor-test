class Post < ApplicationRecord
  validates :title, :author, presence: true

  def to_s
    "#{title} by #{author}"
  end

  def formatted_body
    simple_format body
  end
end
