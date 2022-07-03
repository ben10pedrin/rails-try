class Rescue < ApplicationRecord
  belongs_to :animal
  has_one :address, dependent: :destroy
  
  def self.organizations
      ['Laika', 'Other']
  end
end
