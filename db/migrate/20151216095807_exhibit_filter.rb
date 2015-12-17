class ExhibitFilter < ActiveRecord::Migration
  def change
    create_table :exhibit_filters do |t|
      t.references :spotlight_exhibit, index: true, foreign_key: true
      t.string :field
      t.string :value
    end
  end
end
