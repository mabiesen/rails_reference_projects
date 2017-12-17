class CreateGrids < ActiveRecord::Migration[5.1]
  def change
    create_table :grids do |t|
      t.string :name
      t.string :parentType
      t.string :parentID
      t.string :itemType
      t.integer :itemID

      t.timestamps
    end
  end
end
