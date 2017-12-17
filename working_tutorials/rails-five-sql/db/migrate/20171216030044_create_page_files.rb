class CreatePageFiles < ActiveRecord::Migration[5.1]
  def change
    create_table :page_files do |t|
      t.string :type
      t.string :name
      t.string :link

      t.timestamps
    end
  end
end
