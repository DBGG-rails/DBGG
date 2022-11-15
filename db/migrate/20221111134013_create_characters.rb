class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
      t.string :name
      t.string :synergy
      t.integer :cost

      t.timestamps
    end
  end
end
