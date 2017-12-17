class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :companyName
      t.string :companyLocation
      t.string :jsonKey
      t.string :freqIP
      t.string :freqKey
      t.string :parallaxIP
      t.string :parallaxKey
      t.string :woeID
      t.string :domain
      t.timestamps
    end
  end
end
