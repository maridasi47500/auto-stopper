class CreateCommandlines < ActiveRecord::Migration[7.0]
  def change
    create_table :commandlines do |t|
      t.string :title
      t.text :content
      t.integer :place_id

      t.timestamps
    end
  end
end
