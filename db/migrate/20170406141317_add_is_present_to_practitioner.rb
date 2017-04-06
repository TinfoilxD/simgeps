class AddIsPresentToPractitioner < ActiveRecord::Migration[5.0]
  def change
    add_column :practitioners, :is_present, :boolean
  end
end
