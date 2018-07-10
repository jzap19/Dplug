class CreateInfluencers < ActiveRecord::Migration[5.2]
  def change
    create_table :influencers do |t|
      t.string :name
      t.string :skills_and_interests
      t.integer :age
      t.string :gender
      t.string :charities_and_causes

      t.timestamps
    end
  end
end
