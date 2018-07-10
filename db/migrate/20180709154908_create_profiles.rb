class CreateProfiles < ActiveRecord::Migration[5.2]
  def change
    create_table :profiles do |t|
      t.references :influencer, foreign_key: true
      t.references :brand, foreign_key: true

      t.timestamps
    end
  end
end
