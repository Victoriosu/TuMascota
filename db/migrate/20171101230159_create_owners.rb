class CreateOwners < ActiveRecord::Migration[5.1]
  def change
    create_table :owners do |t|
      t.string :name
      t.integer :age
      t.string :email
      t.string :phone_number
      t.text :address

      t.timestamps
    end
  end
end
