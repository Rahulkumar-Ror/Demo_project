class Course1 < ApplicationRecord
  validates :title, presence: true
  validates :description, :price, :level, :language, presence: true
  has_rich_text :description
  belongs_to :user
  has_many :lesson1s, dependent: :destroy
  paginates_per 4

  extend FriendlyId
  friendly_id :title, use: :slugged
end
