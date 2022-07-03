class AddAnimalRefToRescues < ActiveRecord::Migration[7.0]
  def change
    add_reference :rescues, :animal, null: false, foreign_key: true
  end
end
