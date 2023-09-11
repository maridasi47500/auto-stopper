class CreateTrafficInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :traffic_infos do |t|
      t.integer :source_id
      t.string :destination_id
      t.datetime :time

      t.timestamps
    end
  end
end
