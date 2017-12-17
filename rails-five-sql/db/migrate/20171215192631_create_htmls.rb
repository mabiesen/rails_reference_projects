class CreateHtmls < ActiveRecord::Migration[5.1]
  def change
    create_table :htmls do |t|
      t.string :name
      t.text :page
      t.string :type
      t.timestamps
    end
  end
end
