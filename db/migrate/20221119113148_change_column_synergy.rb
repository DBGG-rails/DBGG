class ChangeColumnSynergy < ActiveRecord::Migration[5.2]
  def change
	  add_column(:synergies, :s_image, :string)
	  add_column(:synergies, :s_count, :integer)
  end
end
