class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
    add_column :users, :company_id, :integer
  end
end
