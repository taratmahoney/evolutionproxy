class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :author
      t.date :date
      t.text :content
      t.string :image

      t.timestamps null: false
    end
  end
end
