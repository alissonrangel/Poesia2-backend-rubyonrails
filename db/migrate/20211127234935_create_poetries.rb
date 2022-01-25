class CreatePoetries < ActiveRecord::Migration[6.1]
  def change
    create_table :poetries do |t|
      t.string :title, null: false
      t.text :body, null: false
      t.integer :likes, null: false, default: 0
      t.integer :dislikes, null: false, default: 0
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
