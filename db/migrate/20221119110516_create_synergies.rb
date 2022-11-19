class CreateSynergies < ActiveRecord::Migration[5.2]
  def change
    create_table :synergies do |t|
      t.string :s_name

      t.timestamps
    end
  end
end
