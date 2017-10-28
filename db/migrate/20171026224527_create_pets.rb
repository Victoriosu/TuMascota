class CreatePets < ActiveRecord::Migration[5.1]
  def change
    create_table :pets do |t|
      t.string :description
      t.string :address
      t.float :longitude
      t.float :latitude

      t.timestamps
    end
  end
end
