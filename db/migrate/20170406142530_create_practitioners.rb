class CreatePractitioners < ActiveRecord::Migration[5.0]
  def change
    drop_table :practitioners
    create_table :practitioners do |t|
      t.string :name
      t.string :company
      t.string :title
      t.boolean :won
      t.boolean :present

      t.timestamps
    end
  end
end
