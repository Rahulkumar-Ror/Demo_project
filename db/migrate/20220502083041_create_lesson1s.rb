class CreateLesson1s < ActiveRecord::Migration[7.0]
  def change
    create_table :lesson1s do |t|
      t.string :title
      t.text :content
      t.references :course1, null: false, foreign_key: true

      t.timestamps
    end
  end
end
