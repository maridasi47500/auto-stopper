class CreateSwitches < ActiveRecord::Migration[7.0]
  def change
    create_table :switches do |t|
      t.string :name

      t.timestamps
    end
  end
end
