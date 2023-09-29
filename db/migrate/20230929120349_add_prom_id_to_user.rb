class AddPromIdToUser < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :prom_id, :integer
  end
end
