class Post < ApplicationRecord
  has_many :sections, dependent: :destroy

  validates :title, :author, presence: true

  def to_s
    "#{title} by #{author}"
  end

  def to_param
    "#{title}"
  end

  def formatted_body
    simple_format body
  end

  def add_like
    likes.increment
  end

  def sections_char_count
    sections.sum { _1.body.length }
  end
end
