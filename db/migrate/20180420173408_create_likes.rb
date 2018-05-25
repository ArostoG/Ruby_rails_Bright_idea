class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :mylike
      t.string :myunlike
      t.references :user, index: true, foreign_key: true
      t.references :post, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
