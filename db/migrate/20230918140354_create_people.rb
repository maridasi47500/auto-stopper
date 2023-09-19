class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :name

      t.timestamps
    end
    add_column :macs, :person_id, :integer
  end
end
