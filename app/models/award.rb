class Award < ActiveRecord::Base
  belongs_to :exhibit
  validates :year, :exhibit_id, presence: true
end
