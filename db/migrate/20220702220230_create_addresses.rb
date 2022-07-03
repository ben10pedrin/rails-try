class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :municipality
      t.string :zip_code
      t.string :neighborhood
      t.string :street

      t.timestamps
    end
  end
end
