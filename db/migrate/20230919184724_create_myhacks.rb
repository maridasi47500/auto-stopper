class CreateMyhacks < ActiveRecord::Migration[7.0]
  def change
    create_table :myhacks do |t|
      t.string :title
      t.text :content
      t.integer :user_id

      t.timestamps
    end
  end
end
