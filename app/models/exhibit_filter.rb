class ExhibitFilter < ActiveRecord::Base
  belongs_to :exhibit, foreign_key: 'spotlight_exhibit_id', class_name: 'Spotlight::Exhibit'
  validates :field, :value, :spotlight_exhibit_id, presence: true
end
