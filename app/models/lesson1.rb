class Lesson1 < ApplicationRecord
  belongs_to :course1
  has_rich_text :content
end
