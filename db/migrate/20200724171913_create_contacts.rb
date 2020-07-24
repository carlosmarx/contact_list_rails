class CreateContacts < ActiveRecord::Migration[6.0]
  def change
    create_table :contacts do |t|
      t.string :name
      t.string :phone
      t.text :description
      t.integer :status
      t.string :picture

      t.timestamps
    end
  end
end
