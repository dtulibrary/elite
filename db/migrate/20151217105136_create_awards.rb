class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :year
      t.references :spotlight_exhibit, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
