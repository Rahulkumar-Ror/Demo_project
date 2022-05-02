class AddSlugToCourse1 < ActiveRecord::Migration[7.0]
  def change
    add_column :course1s, :slug, :string
    add_index :course1s, :slug, unique: true
  end
end
