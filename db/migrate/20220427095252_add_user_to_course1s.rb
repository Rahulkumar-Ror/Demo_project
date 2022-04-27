class AddUserToCourse1s < ActiveRecord::Migration[7.0]
  def change
    add_reference :course1s, :user, null: false, foreign_key: true
  end
end
