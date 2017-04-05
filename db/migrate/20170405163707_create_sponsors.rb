class CreateSponsors < ActiveRecord::Migration[5.0]
  def change
    create_table :sponsors do |t|
      t.string :name
      t.integer :prizes
      t.boolean :has_won

      t.timestamps
    end
  end
end
