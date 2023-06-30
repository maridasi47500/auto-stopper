class CreateWebsites < ActiveRecord::Migration[7.0]
  def change
    create_table :websites do |t|
      t.integer :user_id
      t.string :title
      t.string :path
      t.string :startcommand

      t.timestamps
    end
  end
end
