class CreateMyswitchTables < ActiveRecord::Migration[7.0]
  def change
    create_table :myswitch_tables do |t|
      t.integer :mac_id
      t.string :port
      t.integer :switch_id

      t.timestamps
    end
  end
end
