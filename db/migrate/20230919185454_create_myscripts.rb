class CreateMyscripts < ActiveRecord::Migration[7.0]
  def change
    create_table :myscripts do |t|
      t.string :title
      t.text :content
      t.text :description
      t.integer :user_id

      t.timestamps
    end
    create_table :hackscripts do |t|
      t.integer :myhack_id
      t.integer :myscript_id
      t.integer :myorder
    end
    create_table :hackpics do |t|
      t.integer :myhack_id
      t.integer :mypic_id
      t.integer :myorder
    end
  end
end
