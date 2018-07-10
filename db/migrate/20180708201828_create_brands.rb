class CreateBrands < ActiveRecord::Migration[5.2]
  def change
    create_table :brands do |t|
      t.string :name
      t.string :description
      t.string :skills_and_interests
      t.string :charities_and_causes

      t.timestamps
    end
  end
end
