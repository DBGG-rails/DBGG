class ChangeColumnCharacter < ActiveRecord::Migration[5.2]
  def change
	  add_column(:characters, :synergy2, :string)
	  add_column(:characters, :synergy3, :string, :null => true)
  end
end
