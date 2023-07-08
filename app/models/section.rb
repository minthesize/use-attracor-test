class Section < ApplicationRecord
  belongs_to :post, touch: true
end
