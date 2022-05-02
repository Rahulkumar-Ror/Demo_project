class AddFieldToCourse1s < ActiveRecord::Migration[7.0]
  def change
    add_column :course1s, :short_description, :text
    add_column :course1s, :language, :string, default: "English", null: false
    add_column :course1s, :level, :string, default: "Begineer", null: false
    add_column :course1s, :price, :integer, default: "0", null: false
  end
end
