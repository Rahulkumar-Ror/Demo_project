class Enrollment < ApplicationRecord
  belongs_to :course1
  belongs_to :user

  validates :user, :course1, presence: true

  validates_uniqueness_of :user_id, scope: :course1_id
  validates_uniqueness_of :course1_id, scope: :user_id

  validate :cant_subscribe_to_own_course

  protected

  def cant_subscribe_to_own_course
    if self.new_record?
      if self.user_id.present?
        if user_id == course1.user_id
          errors.add(:base, "You can not subscribe to your own course")
        end
      end
    end
  end
end
