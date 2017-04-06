class GiveDefaults < ActiveRecord::Migration[5.0]
  def change
    change_column :practitioners, :won, :boolean, :default => false
    change_column :practitioners, :present, :boolean, :default => true
    change_column :sponsors, :has_won, :boolean, :default => false
  end
end
