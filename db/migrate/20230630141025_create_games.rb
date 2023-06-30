class CreateGames < ActiveRecord::Migration[7.0]
  def change
    create_table :games do |t|
      t.integer :user_id
      t.string :title
      t.string :path
      t.string :startcommand

      t.timestamps
    end
  end
end
