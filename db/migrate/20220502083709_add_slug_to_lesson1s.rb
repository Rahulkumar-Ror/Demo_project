class AddSlugToLesson1s < ActiveRecord::Migration[7.0]
  def change
    add_column :lesson1s, :slug, :string
    add_index :lesson1s, :slug, unique: true
  end
end
