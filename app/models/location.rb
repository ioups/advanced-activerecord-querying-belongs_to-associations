class Location < ActiveRecord::Base
  belongs_to :region
  has_many :people

  def self.in_region(region)
    includes(:region).where(region: {name: region})
  end
end
