class CreateVersions < ActiveRecord::Migration[5.1]
  def change
    create_table :versions do |t|
      t.string :versionName
      t.references :company, foreignkey: true
      t.boolean :activeVersion
      t.string :startItemType
      t.integer :startItemID
      t.timestamps
    end
  end
end
