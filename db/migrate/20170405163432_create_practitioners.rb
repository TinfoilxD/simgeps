class CreatePractitioners < ActiveRecord::Migration[5.0]
  def change
    create_table :practitioners do |t|
      t.string :name
      t.string :company
      t.string :title
      t.boolean :has_won

      t.timestamps
    end
  end
end
