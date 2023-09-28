class CreateMypics < ActiveRecord::Migration[7.0]
  def change
    create_table :mypics do |t|
      t.string :title
      t.text :content
      t.string :image
      t.integer :user_id

      t.timestamps
    end
  end
end
