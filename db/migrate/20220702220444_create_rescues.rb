class CreateRescues < ActiveRecord::Migration[7.0]
  def change
    create_table :rescues do |t|
      t.date :date
      t.string :rescuers
      t.string :organization
      t.text :notes
      t.references :address, null: false, foreign_key: true

      t.timestamps
    end
  end
end
