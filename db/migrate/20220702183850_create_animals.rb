class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :name
      t.string :alias
      t.string :type
      t.string :sex
      t.string :status
      t.text :particular_signs

      t.timestamps
    end
  end
end
