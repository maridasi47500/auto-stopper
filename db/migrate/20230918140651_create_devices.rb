class CreateDevices < ActiveRecord::Migration[7.0]
  def change
    create_table :devices do |t|
      t.string :name

      t.timestamps
    end
    add_column :macs, :device_id, :integer
  end
end
