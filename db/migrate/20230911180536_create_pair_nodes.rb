class CreatePairNodes < ActiveRecord::Migration[7.0]
  def change
    create_table :pair_nodes do |t|
      t.integer :mac1_id
      t.integer :mac2_id

      t.timestamps
    end
  end
end
