class Course1 < ApplicationRecord
  validates :title, presence: true
  validates :description, presence: true
  has_rich_text :description
  belongs_to :user
  paginates_per 5
end
